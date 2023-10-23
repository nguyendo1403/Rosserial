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
//
//ros::NodeHandle nh;
//
//std_msgs::String str_msg;
//ros::Publisher chatter("chatter", &str_msg);
//char hello[] = "Hello world from STM32!";
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
//  nh.advertise(chatter);
//}
//
//void loop(void)
//{
//  HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_0);
//
//  str_msg.data = hello;
//  chatter.publish(&str_msg);
//  nh.spinOnce();
//
//  HAL_Delay(1000);
//}
//
//****************************************************************************
/*
 * main.cpp

 *
 *  Created on: 2018/01/17
 *      Author: yoneken
 */
#include <mainpp.h>
#include <ros.h>
#include <std_msgs/String.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include "port.h"
#include "mb.h"
#include "mbport.h"
#include "user_mb_app_m.h"
#include "mb_m.h"

ros::NodeHandle nh;

std_msgs::String msg;
const char* velocity;
//char* velocity;
int k,n;
double x,y;
char x_string[6], y_string[6], temp;

//ros::Publisher chatter("chatter", &str_msg);

void vel_cb(const std_msgs::String& msg);
ros::Subscriber<std_msgs::String> vel_manual("/vel_manual", &vel_cb);
//char hello[] = "Hello world from STM32!";

void HAL_UART_TxCpltCallback1(UART_HandleTypeDef *huart){
  nh.getHardware()->flush();
}

void HAL_UART_RxCpltCallback1(UART_HandleTypeDef *huart){
  nh.getHardware()->reset_rbuf();
}

//char* unconstchar(const char* s) {
//    if(!s)
//      return NULL;
//    int i;
//    char* res = NULL;
//    res = (char*) malloc(strlen(s)+1);
//    if(!res){
//        exit(EXIT_FAILURE);
//    } else{
//        for (i = 0; s[i] != '\0'; i++) {
//            res[i] = s[i];
//        }
//        res[i] = '\0';
//        return res;
//    }
//}


void setup(void)
{
  nh.initNode();
  //nh.advertise(chatter);
  nh.subscribe(vel_manual);
  //HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_SET);
}

void loop(void)
{


 // str_msg.data = hello;

  eMBMasterPoll();
  nh.spinOnce();
  HAL_Delay(100);

}

void vel_cb(const std_msgs::String& msg)
{

	velocity = msg.data;
	k = strlen(velocity);
//    if (k == 12) {HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_SET);}
//    else {HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_RESET);}

		  for (int i=0; i< k; i++)
		  {
	          temp = velocity[i];
	          if (temp == ',')
	          {
	        	  n = i;
	          }
		  }
		  strncpy(x_string, &velocity[2], n-2);
		  strncpy(y_string, &velocity[n+3], k-n-2);
	      x = atof(x_string);
	      y = atof(y_string);
	      if (x < 0 ) {HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_SET);}
	      else {HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_RESET);}
	      eMBMasterReqWriteHoldingRegister( (UCHAR) 0x01,  (USHORT) 1, (USHORT) 10, 10 );
}
