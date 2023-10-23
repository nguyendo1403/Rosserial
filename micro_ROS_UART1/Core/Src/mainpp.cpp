#include <mainpp.h>
#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>

ros::NodeHandle nh;
std_msgs::Bool done_msg;
ros::Publisher done_nangha("done_nangha", &done_msg);

std_msgs::Bool active_msg;
ros::Publisher status_active("status_active", &active_msg);


std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);  //Publish chủ đề chatter lên ROS

const char* num;

char num0 = '0';
char num1 = '0';
char num2 = '0';
char num3 = '0';
char num4 = '0';
char num5 = '0';
char num6 = '0';
char num7 = '0';



//std::string num;

bool set34 = false;
bool set12 = false;
bool x = false;
unsigned long previousMillisX = 0;
const long interval = 500;


unsigned long previousMillisX2 = 0;
const long interval2 = 1000;


bool x2 = false;
bool nut_zero = false;
bool nut_new = false;
bool initial = false;





void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart) {
  nh.getHardware()->flush();
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {
  nh.getHardware()->reset_rbuf();
}

void xulichuoi(const std_msgs::String &msg) {
  num = msg.data;
  num0=num[0];
  num1=num[1];
  num2=num[2];
  num3=num[3];
  num4=num[4];
  num5=num[5];
  num6=num[6];

  num7=num[7];


}

void tatall(){
	if ( (num0=='0') && (num1=='0') && (num2=='0') && (num3=='0')&&(num4=='0')&& (num5=='0')&& (num6=='0') && (num7=='0') ){

		 HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_RESET);
		 HAL_GPIO_WritePin(GPIOG, GPIO_PIN_1, GPIO_PIN_RESET);
		    HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);

	}

}


// Trường hợp chạy bình thường
void runnormal(){
//	if ( (num[3]=='0') && (num[4]=='0') && (num[5]=='1')&& (num[6]=='0') && (num[7]=='0'))
		if ( ( (num5=='1') && (num6=='0') && (num7=='0')))
	{

        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_RESET);
//        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);


        if (x == true) {
        	        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);
        	      } else {
        	        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);
        	      }
				}
	}


// Trường hợp chạy bình thường gặp vật cản nguy hiểm
void runnormal_dangerous(){
	if ( (num3=='1') &&(num4=='0') && (num5=='0') && (num6=='0') && (num7=='0'))
	{
//        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);


//        unsigned long currentMillisX2 = HAL_GetTick();
//         if (currentMillisX2 - previousMillisX2 >= interval2) {
//           previousMillisX2 = currentMillisX2;
//           x2 = !x2;
//         }

//        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);

        if (x == true) {
               	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
               	      } else {
               	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_RESET);
               	      }
       	}
	}

// Trường hợp chạy bình thường gặp vật cản cảnh báo
void runnormal_warning(){
	if ( (num3=='1')&& (num4=='1') && (num5=='0') )
	{
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);
	}
}

//Trường hợp nâng hạ bình thường
void nangha_normal(){
	if ( ((num3=='0') && (num4=='0') && (num5=='1') && (num6=='1') && (num7=='0')) || ((num3=='0') &&(num4=='0') && (num5=='1') && (num6=='0') && (num7=='1')))
	{
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_RESET);
//        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);

        if (x == true) {
                       	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_SET);
                       	      } else {
                       	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_RESET);
                       	      }
               	}
	}


//Trường hợp nâng hạ bình thường gặp vật cản cảnh báo
void nangha_warning(){
	if ( ((num3=='1')&& (num4=='1') && (num5=='0')))
	{
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);
	}
}

//Trường hợp nâng hạ bình thường gặp vật cản nguy hiểm
void nangha_dangerous(){
	if ( ((num3=='1')&& (num4=='0') && (num5=='0')&& (num6=='1') && (num7=='0')) || ((num3=='1') && (num4=='0') && (num5=='0') &&(num6=='0') && (num7=='1')))
	{
//        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_11, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);
        if (x == true) {
               	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_SET);
               	      } else {
               	        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_12, GPIO_PIN_RESET);
               	      }

	}
}


// Bật tắt lao K2
void battatloak2() {
  if (num0 == '1') {
    HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_SET);
  }
  if (num0 == '0') {
    HAL_GPIO_WritePin(GPIOG, GPIO_PIN_0, GPIO_PIN_RESET);
  }
}

// Bật tắt lao K1
void battatloak1() {
  if (num1 == '1') {
    HAL_GPIO_WritePin(GPIOG, GPIO_PIN_1, GPIO_PIN_SET);
  }
  if (num1 == '0') {
    HAL_GPIO_WritePin(GPIOG, GPIO_PIN_1, GPIO_PIN_RESET);
  }
}


// Bật tắt lao K3
void battatloak3() {
  if (num2 == '1') {
    HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, GPIO_PIN_SET);
  }
  if (num2 == '0') {
    HAL_GPIO_WritePin(GPIOF, GPIO_PIN_15, GPIO_PIN_RESET);
  }
}


//Bật tắt nâng xilanh và sau đó publish hoàn thành việc nâng xi lanh
void battatxilanhr34() {
  if ((num6 == '1') && (num7 == '0') && (set34 == false)) {
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_SET);
    set34 = true;
  }
  if (num6 == '0') {
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_RESET);
  }

  if ((num6 == '0') && (num7 == '0') && (set34 == true) ){
    GPIO_PinState status1 = HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_1);
    if (status1 == GPIO_PIN_RESET) {
      done_msg.data = true;
      done_nangha.publish(&done_msg);
      set34 = false;
    }
  }
}


//Bật tắt hạ xilanh và sau đó publish hoàn thành việc hạ xi lanh
void battatxilanhr12() {
  if ((num7 == '1') && (num6 == '0') && (set12 == false)) {
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_SET);
    set12 = true;
  }
  if (num7 == '0') {
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);
  }

  if ((num7 == '0') && (num6 == '0') && (set12 == true)) {
    GPIO_PinState status2 = HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_0);
    if (status2 == GPIO_PIN_RESET) {
      done_msg.data = true;
      done_nangha.publish(&done_msg);
      set12 = false;
    }
  }
}


//Tạo biến x thay đổi trạng thái sau 0.5s
void changeXState() {
  unsigned long currentMillisX = HAL_GetTick();
  if (currentMillisX - previousMillisX >= interval) {
    previousMillisX = currentMillisX;
    x = !x;
  }
}

//Tạo biến x2 thay đổi trạng thái sau 1s
void changeXState2() {
	  GPIO_PinState status = HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_0);

  unsigned long currentMillisX2 = HAL_GetTick();
  if (currentMillisX2 - previousMillisX2 >= interval2) {
    previousMillisX2 = currentMillisX2;
    x2 = !x2;
//    battatledb();
//    docnutnhan();

    if (status == GPIO_PIN_SET) {
        active_msg.data = false;
        nut_new = false;
      } else {
        active_msg.data = true;
        nut_new = true;
      }
      HAL_Delay(20);
      status_active.publish(&active_msg);

  }
}




ros::Subscriber<std_msgs::String> sub("number", xulichuoi);


//void docnutnhan() {
//  GPIO_PinState status = HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_0);
//
//  if (status == GPIO_PIN_SET) {
//    active_msg.data = false;
//    nut_new = false;
//  } else {
//    active_msg.data = true;
//    nut_new = true;
//  }
//
//  // Bạn có thể chú ý đến việc di chuyển HAL_Delay(20) lên trước if (initial == false)
//  HAL_Delay(20);
//
//  if (x2 == true) {
//	      status_active.publish(&active_msg);
//          	      } else {
//          	    	    status_active.publish(&active_msg);
//          	      }
////  status_active.publish(&active_msg);
//
////  if (!initial) {
////    HAL_Delay(10000);
//////    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_SET);
////
////    status_active.publish(&active_msg);
////    initial = true;
////  }
////
////  if (nut_new != nut_zero) {
////    status_active.publish(&active_msg);
////    nut_zero = nut_new;
////  }
//}
void setup(void) {
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(done_nangha);
  nh.advertise(status_active);


}

void loop(void) {
  ros::Subscriber<std_msgs::String> sub("number", xulichuoi);

  changeXState();
  changeXState2();

  tatall();

  battatloak1();
  battatloak2();
  battatloak3();

  runnormal();
  runnormal_warning();
  runnormal_dangerous();

  nangha_normal();
  nangha_dangerous();
  nangha_warning();

  battatxilanhr12();
  battatxilanhr34();


  nh.spinOnce();
//  HAL_Delay(50);
}
