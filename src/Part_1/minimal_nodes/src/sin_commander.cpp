// sin_commander node:
// prompts for an amplitude and frequency to generate sinusoidal velocities
// publishes sinusoidal velocities to minimal_controller node on topic "sin_vel_cmd"
#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <math.h>
using namespace std;
// global variables

std_msgs::Float64 sin_velocity;

int main(int argc, char **argv) {
	ros::init(argc, argv, "sin_commander");	// name the node: sin_commander
	ros::NodeHandle nh; // node handle
	// create publisher object to send sinusoidal velocity
	ros::Publisher publisher_obj_sin_vel = nh.advertise<std_msgs::Float64>("sin_vel_cmd", 1);
	double amp = 0.0;
	double freq = 0.0;
	double omega = 0.0;
	double vel = 0.0;
	cout << "Enter an amplitude: ";
	cin>>amp;
	cout << "Enter a frequency (Hz): ";
	cin>>freq;
	// conversion from degrees to radians
	omega = freq*M_PI/180.0;

	double phase = 0.0;
	double dt = 0.1;
	ros::Rate sample_rate(1/dt);
	
	while (ros::ok()) {
		phase = phase + omega*dt;
		vel = amp*sin(phase);
		sin_velocity.data = vel;
		//cout << phase;
		publisher_obj_sin_vel.publish(sin_velocity);
		ROS_INFO("sin velocity command = %f", sin_velocity.data);
		//ros::spinOnce(); // allow data update from callback
		sample_rate.sleep(); // wait for specified period
	}
	return 0;
}
