/*#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "xgpio.h"


#define uart_id XPAR_UARTLITE_0_DEVICE_ID

XUartLite uart;

int main(void){

		XGpio LED_XGpio;
		XGpio_Initialize(&LED_XGpio, XPAR_AXI_GPIO_0_DEVICE_ID);	// 初始化LED_XGpio.
		XGpio_SetDataDirection(&LED_XGpio, 1, 0);		// 設置通道.

		//int XUartLite_Initialize(XUartLite *InstancePtr, u16 DeviceId);
		XUartLite_Initialize(&uart,uart_id);


		char msg[] = "Hello Zynq!\n\r";
		//XUartLite_Send(XUartLite *InstancePtr, u8 *DataBufferPtr,unsigned int NumBytes);
		XUartLite_Send(&uart,msg, sizeof(msg));
		//XUartLite_Recv(XUartLite *InstancePtr, u8 *DataBufferPtr,unsigned int NumBytes);
		xil_printf

		return 0;


}*/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"

void simple_delay (int simple_delay)

{
	volatile int i = 0;
	for (i = 0; i < simple_delay; i++);
}

int main() {
    init_platform();
    u32 regValue;
    int i,j;

    xil_printf("Hello World\n\r");
    xil_printf("Count down\n\r");
    xil_printf("3\n\r");
    xil_printf("2\n\r");
    xil_printf("1\n\r");
    xil_printf("GO\n\r");

    while (1) {
    	for (j=0; j < 65536; j ++){
    		for (i = 0; i < 65536; i += 4) {
    			regValue = Xil_In32(XPAR_BUFFER_0_S00_AXI_BASEADDR + i);
    			if(regValue !=0){
    				printf("data is %d\n", (int)regValue);
    			}
    		}
        printf("Finish %d\n",j);
    	}
    }

    cleanup_platform();
    return 0;
}
