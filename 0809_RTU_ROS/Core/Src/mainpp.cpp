///*
// * main.cpp
//
// *
// *  Created on: 2018/01/17
// *      Author: yoneken
// */
//#include <mainpp.h>
//#include <ros.h>
//#include <std_msgs/String.h>
//#include <std_msgs/UInt16.h>
//#include <stdlib.h>
//#include <math.h>
//#include <stdio.h>
//#include <string.h>
//ros::NodeHandle nh;
//
//std_msgs::String str_msg;
//const char* vel;
//int k,n;
//double x,y;
////ros::Publisher chatter("chatter", &str_msg);
//
//void vel_cb(const std_msgs::String& msg);
//ros::Subscriber<std_msgs::String> vel_sub("vel_manual", &vel_cb);
////char hello[] = "Hello world from STM32!";
//
//void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
//  nh.getHardware()->flush();
//}
//
//void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
//  nh.getHardware()->reset_rbuf();
//}
//
//void setup(void)
//{
//  nh.initNode();
//  //nh.advertise(chatter);
//  nh.subscribe(vel_sub);
//}
//
//
//void loop(void)
//{
//
//
// // str_msg.data = hello;
//
//
//  nh.spinOnce();
//
//}
//
//void vel_cb(const std_msgs::String& msg)
//{
//	vel = msg.data;
//}



//************************************************************************
/*
 * main.cpp

 *
 *  Created on: 2018/01/17
 *      Author: yoneken
 */
#include <mainpp.h>
//#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle nh;

std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);
char hello[] = "Hello world from STM32!";

void HAL_UART_TxCpltCallback1(UART_HandleTypeDef *huart){
  nh.getHardware()->flush();
}

void HAL_UART_RxCpltCallback1(UART_HandleTypeDef *huart){
  nh.getHardware()->reset_rbuf();
}

void setup(void)
{
  nh.initNode();
  nh.advertise(chatter);
}

void loop(void)
{
  str_msg.data = hello;
  chatter.publish(&str_msg);
  nh.spinOnce();

  HAL_Delay(1000);
}


