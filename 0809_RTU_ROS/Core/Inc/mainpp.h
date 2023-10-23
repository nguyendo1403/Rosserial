/*
 * mainpp.h
 *
 *  Created on: 2018/01/17
 *      Author: yoneken
 */

#ifndef MAINPP_H_
#define MAINPP_H_
#include <ros.h>
#ifdef __cplusplus
 extern "C" {
#endif

void setup(void);
void loop(void);
void HAL_UART_TxCpltCallback1(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback1(UART_HandleTypeDef *huart);
#ifdef __cplusplus
}
#endif


#endif /* MAINPP_H_ */
