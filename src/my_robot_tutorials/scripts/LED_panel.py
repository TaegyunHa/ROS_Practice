#!/usr/bin/env python

import rospy
from my_robot_msgs.srv import ControlLED

led_states = [0,0,0]

def callback_set_led(req):
	led_number = req.LED_num
	state = req.state
	global led_states

	if (led_number > len(led_states)) or (led_number <= 0):
		return False
	if not (state == 0 or state == 1):
		return False

	led_states[led_number - 1] = state

	return True

if __name__ == '__main__':
	rospy.init_node("LED_panel")
	rospy.loginfo("LED_panel server has been created")


	service = rospy.Service("/set_led", ControlLED, callback_set_led)

	rate = rospy.Rate(10)

	while not rospy.is_shutdown():
		rospy.loginfo(led_states)
		rate.sleep()

#	rospy.loginfo("Service server has been started")

#	rospy.spin()


