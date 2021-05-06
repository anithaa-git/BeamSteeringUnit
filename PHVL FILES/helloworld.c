/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

//#include <stdio.h>
#include "xil_io.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
//#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xbasic_types.h"


Xuint32 *baseaddr_p = (Xuint32 *)XPAR_IPRG_0_S00_AXI_BASEADDR;


int main()
{


	u8 a[2];
	u8 b[2];
	u8 c[2];
	u32 lut_in,lut_out, phase;

	int i,j,k,l,m;
    init_platform();



    while(1){

    xil_printf("B1: Enter elevation angle: ");
    for (m=0;m<=1;m++){
    (c[m+1])=inbyte()-0x30;;

    }
    c[1]=(c[1])*10+(c[2]);

    xil_printf("%u\n\r",c[1]);
	d=c[1]/5;



    xil_printf("B1: Enter theta: ");
        for (i=0;i<=1;i++){
        (a[i+1])=inbyte()-0x30;;

        }
        a[1]=(a[1])*10+(a[2]);

        xil_printf("%u\n\r",a[1]);


    xil_printf("B1: Enter frequency: ");
    for (j=0;j<=1;j++){

        (b[j+1])=inbyte()-0x30;

        }

        b[1]=b[1]*10+b[2];
        xil_printf("%u\n\r",b[1]);


		lut_in=((0x0000)<<18)|((0x1)<<15)|((b[1])<<10)|(a[1]<<4)|c[1];
		Xil_Out32(XPAR_IPRG_0_S00_AXI_BASEADDR,lut_in);


        lut_out=Xil_In32(XPAR_IPRG_0_S00_AXI_BASEADDR+4);
       // xil_printf("%08x\n\r",lut_out);
        xil_printf("\n B1: phase shifts:\n\r");
       for(k=0;k<5;k++){
    	   l=k*5;
    	   phase=((lut_out>>l)&(0x0000001f))*11.25;
         xil_printf("element_%u= %u\n\r",k+1,phase);}
    }
    cleanup_platform();
    return 0;
}




