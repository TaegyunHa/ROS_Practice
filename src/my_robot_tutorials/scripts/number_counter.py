#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
from std_srvs.srv import SetBool

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

def callback_reset_counter(req):
	if req.data:
		NumCnt.cnt = 0
		return True, "Counter has been reset"
	return False, "Counter has not been reset"

if __name__ == '__main__':
	rospy.init_node('number_counter')
	
	pub = rospy.Publisher("/number_count", Int64, queue_size=10)
	sub = rospy.Subscriber("/number", Int64, callback_receive_data)

	reset_service = rospy.Service("/reset_number_count", SetBool, callback_reset_counter)
	
	rospy.spin()
