// example_action_client: 
// wsn, October, 2014

#include<ros/ros.h>
#include<actionlib/client/simple_action_client.h>
#include<std_srvs/Trigger.h>
#include<osrf_gear/ConveyorBeltControl.h>
#include<osrf_gear/DroneControl.h>
#include<osrf_gear/LogicalCameraImage.h>
#include<iostream>
using namespace std;

osrf_gear::LogicalCameraImage g_cam1_data;
bool g_take_new_snapshot = false;;
bool box_centered;


// callback function for logical camera obtaining x, y, z data
void cam2B(const osrf_gear::LogicalCameraImage& message_holder) 
    { 
    	if(g_take_new_snapshot) {
      	    ROS_INFO_STREAM("image from camera: " << message_holder << endl); 
      	    g_cam1_data = message_holder; // load newly captured data to object
	    // Wait for moment when box is near the center of the camera
	    if(g_cam1_data.models.size() >= 1) {
	        if(g_cam1_data.pose.position.z >= 0) {
		    g_take_new_snapshot = false;
		}
	    }
	}
} 

int main(int argc, char** argv) {
    ros::init(argc, argv, "competition_first_stage"); // name this node 
    ros::NodeHandle nh;

    // Create goal objects for the startup, conveyor, and drone
    std_srvs::Trigger startup_srv;
    osrf_gear::ConveyorBeltControl conveyor_srv;
    osrf_gear::DroneControl drone_srv;

    // Create action clients for startup, conveyor and drone
    ros::ServiceClient startup_client = nh.serviceClient<std_srvs::Trigger>("/ariac/start_competition");
    ros::ServiceClient conveyor_client = nh.serviceClient<osrf_gear::ConveyorBeltControl>("/ariac/conveyor/control");
    ros::ServiceClient drone_client = nh.serviceClient<osrf_gear::DroneControl>("/ariac/drone");

    // Subscribe to logical camera data by subscribing to topic /ariac/logical_camera_2
    ros::Subscriber camera_subscriber = nh.subscribe("/ariac/logical_camera_2", 1, cam2B); 

    // Initialize the response to start up Gazebo and the simulation
    //startup_srv.response.success = false;
    startup_client.call(startup_srv);

    // Check if there is a successful startup, if not try again
    while(!startup_srv.response.success) {
    	ROS_WARN("not successful starting up");
    	startup_client.call(startup_srv);
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("startup response is successful");

    // Initialize the response for the conveyor
    conveyor_srv.response.success = false;
    // Initialize power level to see conveyor move- Start conveyor movement
    conveyor_srv.request.power = 100;
    conveyor_client.call(conveyor_srv);

    // Check if there is a conveyor moving, if not try again
    while(!conveyor_srv.response.success) {
    	ROS_WARN("not successful starting up conveyor");
    	conveyor_srv.request.power = 100;   // Establish power level again to see movement
    	conveyor_client.call(conveyor_srv);
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("conveyor response is successful");

    // Start updating camera image values
    g_take_new_snapshot = true;
    while(g_cam1_data.models.size() < 1) {
	ROS_INFO("No box has been detected yet");
    	ros::spinOnce();
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("Box spotted");
    
    while(!(g_cam1_data.pose.position.z >= 0)) {
	ROS_INFO("Box not centered");
	ros::spinOnce();
	ros::Duration(0.5).sleep();
    }
    ROS_INFO("Box centered");
    ros::Duration(2.5).sleep();

    // Pause for 5 seconds
    conveyor_srv.request.power = 0;
    conveyor_client.call(conveyor_srv);
    ros::Duration(5).sleep();

    // Restart conveyor
    conveyor_srv.request.power = 100;
    conveyor_client.call(conveyor_srv);

    // If conveyor enabled is false, go through and call the drone, this should update the enable status to true in the meantime- however doesnt'..... have to do manually
     while(!drone_srv.response.success) {
	ROS_WARN("drone hasn't picked up package");
	drone_client.call(drone_srv);
	ros::Duration(0.5).sleep();
    }
    ROS_INFO("drone picked up package and conveyor is enabled");
    conveyor_srv.request.power = 100;
    conveyor_client.call(conveyor_srv);

    return 0;
}

