# ROS_Practice

### ROS Publisher **[C++]**
```cpp
#include <ros/ros.h>
#include <std_msgs/Int64.h>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "number_publisher");
  ros::NodeHandle nh;
  ros::Publisher pub = nh.advertise<std_msgs::Int64>("/number",10);
  
  ros::Rate rate(3);
  
  while (ros::ok()) {
    std_msgs::Int64 msg;
    msg.data = 2;
    pub.publish(msg);
    rate.sleep();
  }
}
```

### ROS Subscriber/Publisher **[Python]**
```python
#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64

class NumCnt:
	cnt = 0

def callback_receive_data(msg):
	rospy.loginfo("Message received: ")
	rospy.loginfo(msg)
	NumCnt.cnt += msg.data
	rospy.loginfo(NumCnt.cnt)
	
	new_msg = Int64()
	new_msg.data = NumCnt.cnt
	pub.publish(new_msg)

if __name__ == '__main__':
	rospy.init_node('number_counter')
	
	pub = rospy.Publisher("/number_count", Int64, queue_size=10)
	sub = rospy.Subscriber("/number", Int64, callback_receive_data)
	
	rospy.spin()
```
