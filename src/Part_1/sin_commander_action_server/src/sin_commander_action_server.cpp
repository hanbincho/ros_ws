// example_action_server: a simple action server
// Wyatt Newman

#include<ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <std_msgs/Float64.h>
#include <iostream>
#include<sin_commander_action_server/sinAction.h>
using namespace std;

std_msgs::Float64 sin_velocity;

int g_count = 0;
bool g_count_failure = false;

class SinCommanderActionServer {
private:

    ros::NodeHandle nh_;  // we'll need a node handle; get one upon instantiation
    ros::Publisher publisher_obj_sin_vel = nh_.advertise<std_msgs::Float64>("sin_vel_cmd", 1);
    actionlib::SimpleActionServer<sin_commander_action_server::sinAction> as_;
    
    sin_commander_action_server::sinGoal goal_; // goal message, received from client
    sin_commander_action_server::sinResult result_; // put results here, to be sent back to the client when done w/ goal

public:
    SinCommanderActionServer(); //define the body of the constructor outside of class definition

    ~SinCommanderActionServer(void) {
    }
    // Action Interface
    void executeCB(const actionlib::SimpleActionServer<sin_commander_action_server::sinAction>::GoalConstPtr& goal);
};

SinCommanderActionServer::SinCommanderActionServer() :
   as_(nh_, "sin_cmd_action", boost::bind(&SinCommanderActionServer::executeCB, this, _1),false) 
{
    ROS_INFO("in constructor of SinCommanderActionServer...");
    // do any other desired initializations here...specific to your implementation

    as_.start(); //start the server running
}

void SinCommanderActionServer::executeCB(const actionlib::SimpleActionServer<sin_commander_action_server::sinAction>::GoalConstPtr& goal) {

    // start executing action
    cout << "Enter a frequency: ";
    cin >> goal_.freq;
    cout << "Enter an amplitude: ";
    cin >> goal_.amp;
    cout << "Enter the number of cycles: ";
    cin >> goal_.cycles;

    int cycle_count = 0;
    double dt = 0.0001;
    double omega = 0.0;
    double vel = 0.0;
    bool vel_finished = false;

    omega = 2*M_PI*goal_.freq;
    while (!vel_finished) {
	    // run through this section based on the number of cycles inputted 
	    while (cycle_count < goal_.cycles) {
		cycle_count++;
		//goal_.input = cycle_count;
		double phase = 0.0;
		// find the sinusoidal velocities for each cycle 
		while(phase < (2*M_PI)) {
		    phase = phase + omega*dt;
		    vel = goal_.amp*sin(phase);
		    sin_velocity.data = vel;
		    publisher_obj_sin_vel.publish(sin_velocity);
		    ROS_INFO("sin velocity command = %f", sin_velocity.data);
		}

    	    }
    vel_finished = true;
    cycle_count = 0;
    }
   
    if (vel_finished) {
	    as_.setSucceeded(result_);
    }
    else {
	    ROS_INFO("Informing client of aborted goal");
	    as_.setAborted(result_);
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "sin_commander_action_server_node"); // name this node 

    ROS_INFO("instantiating the sin commander action server: ");

    SinCommanderActionServer as_object; // create an instance of the class "SinCommanderActionServer"
    
    ROS_INFO("going into spin");
    // from here, all the work is done in the action server, with the interesting stuff done within "executeCB()"
    // you will see 5 new topics under example_action: cancel, feedback, goal, result, status
    while (!g_count_failure && ros::ok()) {
        ros::spinOnce(); //normally, can simply do: ros::spin();  
        // for debug, induce a halt if we ever get our client/server communications out of sync
    }

    return 0;
}

