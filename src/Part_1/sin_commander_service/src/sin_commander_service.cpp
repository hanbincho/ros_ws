// sin commander service:
// run this as: rosrun sine_commander_service sine_commander_service
// in another window, tickle it manually with (e.g.): 
//    


#include <ros/ros.h>
#include <sin_commander_service/SinCommanderMsg.h>
#include <iostream>
#include <std_msgs/Float64.h>
using namespace std;

std_msgs::Float64 sin_velocity;

bool callback(sin_commander_service::SinCommanderMsgRequest& request, sin_commander_service::SinCommanderMsgResponse& response)
{
    ros::NodeHandle nh_;  // we'll need a node handle; get one upon instantiation
    ros::Publisher publisher_obj_sin_vel = nh_.advertise<std_msgs::Float64>("sin_vel_cmd", 1);
    ROS_INFO("Received amplitude and frequency values");
    double amp_cmd(request.amp);
    double freq_cmd(request.freq);

    double omega = 0.0;
    double vel = 0.0;
    double phase = 0.0;
    double dt = 0.0001;
    double t = 0.0;


    omega = freq_cmd*2*M_PI;
    ros::Rate sample_rate(1/dt);

    while (t < 1) {
	    phase = phase + omega*dt;
	    vel = amp_cmd*sin(phase);
	    response.sin_velocity = vel;
	    sin_velocity.data = vel;
	    cout << response.sin_velocity;
	    cout << endl;
	    sample_rate.sleep();
	    t = t + dt;
	    publisher_obj_sin_vel.publish(sin_velocity);
	    
    }
    
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "sin_cmd_service");
  ros::NodeHandle nh;

  ros::ServiceServer service = nh.advertiseService("cmd_sin_velocity", callback);
  ROS_INFO("Ready to accept amplitude and frequency.");
  ros::spin();

  return 0;
}
