// example_action_client: 
// wsn, October, 2014

#include<ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include<std_srvs/Trigger.h>
#include<osrf_gear/ConveyorBeltControl>
#include<osrf_gear/DroneControl>


// This function will be called once when the goal completes
// this is optional, but it is a convenient way to get access to the "result" message sent by the server

int main(int argc, char** argv) {
    ros::init(argc, argv, "demo_action_client_node"); // name this node 

    // Create goal objects for the startup, conveyor, and drone
    std_srvs::Trigger startup_srv;
    osrf_gear::ConveyorBeltControl conveyor_srv;
    osrf_gear::DroneControl drone_srv;

    // Create action clients for startup, conveyor and drone
    actionlib::SimpleActionClient<std_srvs::Trigger> action_client("/ariac/start_competition", true);
    actionlib::SimpleActionClient<osrf_gear::ConveyorBeltControl> action_client("/ariac/conveyor/control", true);
    actionlib::SimpleActionClient<osrf_gear::DroneControl> action_client("/ariac/drone", true);

    // Initialize the response to start up Gazebo and the simulation
    startup_srv.response.success = false;
    startup_client.call(startup_srv);

    // Check if there is a successful startup, if not try again
    while(!startup_srv.response.sucess) {
    	ROS_WARN("not successful starting up");
    	startup_client.call(startup_srv);
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("startup response is successful");

    // Initialize the response for the conveyor
    conveyor_srv.response.success = false;
    // Initialize power level to see conveyor move
    conveyor_srv.request.power = 100;
    startup_client.call(conveyor_srv);

    // Check if there is a conveyor starts moving, if not try again
    while(!conveyor_srv.response.sucess) {
    	ROS_WARN("not successful starting up conveyor");
    	conveyor_srv.request.power = 100;   // Establish power level again to see movement
    	startup_client.call(conveyor_srv);
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("conveyor response is successful");

    // Initialize the response for the conveyor
    drone_srv.response.success = false;
    // Initialize power level to see conveyor move
    drone_srv.request.power = 100;
    startup_client.call(conveyor_srv);

    // Check if there is a conveyor starts moving, if not try again
    while(!conveyor_srv.response.sucess) {
    	ROS_WARN("not successful starting up conveyor");
    	conveyor_srv.request.power = 100;   // Establish power level again to see movement
    	startup_client.call(conveyor_srv);
    	ros::Duration(0.5).sleep();
    }
    ROS_INFO("conveyor response is successful");

    return 0;
}

