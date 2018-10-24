// example_action_client: 
// wsn, October, 2014

#include<ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <iostream>
#include <std_msgs/Float64.h>
#include <math.h>
#include<sin_commander_action_server/sinAction.h>
using namespace std;

std_msgs::Float64 sin_velocity;

// This function will be called once when the goal completes
// this is optional, but it is a convenient way to get access to the "result" message sent by the server

void doneCb(const actionlib::SimpleClientGoalState& state,
        const sin_commander_action_server::sinResultConstPtr& result) {
    ROS_INFO(" doneCb: server responded with state [%s]", state.toString().c_str());
    //int diff = result->output - result->goal_stamp;
    ROS_INFO("Finished computing sinusoidal velocities (1 is true, 0 is false): %d", result ->is_done);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "sin_commander_action_client_node"); // name this node 

    // create action client
    actionlib::SimpleActionClient<sin_commander_action_server::sinAction> action_client("sin_cmd_action", true);

    // attempt to connect to the server:
    ROS_INFO("waiting for server: ");
    bool server_exists = action_client.waitForServer(ros::Duration(5.0)); // wait for up to 5 seconds

    if (!server_exists) {
        ROS_WARN("could not connect to server; halting");
        return 0; // bail out; optionally, could print a warning message and retry
    }


    ROS_INFO("connected to action server"); // if here, then we connected to the server;
    sin_commander_action_server::sinGoal goal;


		//action_client.sendGoal(goal); // simple example--send goal, but do not specify callbacks	
		double start = ros::Time::now().toSec();
		//action_client.sendGoal(goal, &doneCb); 
		action_client.sendGoal(goal);

		//bool finished_before_timeout = action_client.waitForResult(ros::Duration(10.0));
		bool finished_before_timeout = action_client.waitForResult(); // wait forever...
		if (finished_before_timeout) {
		    actionlib::SimpleClientGoalState state = action_client.getState();
		    ROS_INFO("Action complete: %s", state.toString().c_str());

		    double finish = ros::Time::now().toSec();
		    double diff = finish-start;
		    ROS_INFO("Total time taken (sec): %f", diff);
		}	
		else {
		    ROS_INFO("Action did not complete before timeout");
		}
    return 0;
}

