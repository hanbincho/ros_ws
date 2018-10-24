// sin commander client:
// first run: rosrun sin_commander_service sin_commander_service
// then start this node:  rosrun sin_commander_service sin_commander_client
// to end the node: Ctrl+C and fill in dummy values for the amplitude and frequency



#include <ros/ros.h>
#include <sin_commander_service/SinCommanderMsg.h> // this message type is defined in the current package
#include <iostream>
using namespace std;

int main(int argc, char **argv) {
    ros::init(argc, argv, "sin_cmd_client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<sin_commander_service::SinCommanderMsg>("cmd_sin_velocity");
    sin_commander_service::SinCommanderMsg srv;

    double amp_cmd;
    double freq_cmd;
    while (ros::ok()) {
        cout<<endl;
        cout << "Enter an amplitude: ";
        cin>>amp_cmd;
        cout << "Enter a frequency: ";
        cin>>freq_cmd;

        srv.request.amp = amp_cmd; 
	srv.request.freq = freq_cmd;

	if (client.call(srv)){
		cout << endl;
		cout << "Amplitude: " << srv.request.amp;
		cout << endl;
		cout << "Frequency: " << srv.request.freq;
		cout << endl;
		cout << "Final Sinusoidal Velocity: " << srv.response.sin_velocity;
		cout << endl;
	}
	else {
            ROS_ERROR("Failed to call service cmd_sin_velocity");
            return 1;
        }
    }

    return 0;
}
