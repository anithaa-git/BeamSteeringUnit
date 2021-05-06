`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:08 02/04/2019 
// Design Name: 
// Module Name:    phvl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module phvl(sys_clk,flagf,fvalue,tvalue,pivalue,eout1,eout2,eout3,eout4,eout5,eout1p,eout2p,eout3p,eout4p,eout5p);
//input sys_clk,flagf,rst; 
input sys_clk,flagf;
//input d_en; 
input [3:0]pivalue;
input[4:0]fvalue;
input [5:0]tvalue;
//input rw;
//output [5:0]eout1,eout2,eout3,eout4,eout5,eout6,eout7,eout8,eout9,eout10,eout11,eout12,eout13,eout14;
//output [4:0]dout1;
//output oe;
//wire en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13;
output [4:0]eout1,eout2,eout3,eout4,eout5,eout1p,eout2p,eout3p,eout4p,eout5p;
wire [4:0]eout1t,eout2t,eout3t,eout4t,eout5t;

/*wire [3:0]sel1;
wire [3:0]cout;
//output [3:0]addr;
wire [4:0]din;
wire [4:0] out;
wire c_en;
wire I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13;*/

//wire oe;
/*
assign en=c_en;
assign addr=cout;
assign din=out;
assign sel1=cout;*/
/*assign en0=I0;
assign en1=I1;
assign en2=I2;
assign en3=I3;
assign en4=I4;
assign en5=I5;
assign en6=I6;
assign en7=I7;
assign en8=I8;
assign en9=I9;
assign en10=I10;
assign en11=I11;
assign  en12=I12;
assign  en13=I13;*/
//assign rw=oe;
assign en=flagf;
//assign c_en=flagf;
parameter   lu6_1 =	"lut_b1f6_e1.mem",lu8_1 =	"lut_b1f8_e1.mem",lu10_1 =	"lut_b1f10_e1.mem",lu12_1 =	"lut_b1f12_e1.mem",lu14_1 =	"lut_b1f14_e1.mem",lu16_1 =	"lut_b1f16_e1.mem",lu18_1 =	"lut_b1f18_e1.mem",
            lu6_2 =	"lut_b1f6_e2.mem",lu8_2 =	"lut_b1f8_e2.mem",lu10_2 =	"lut_b1f10_e2.mem",lu12_2 =	"lut_b1f12_e2.mem",lu14_2 =	"lut_b1f14_e2.mem",lu16_2 =	"lut_b1f16_e2.mem",lu18_2 =	"lut_b1f18_e2.mem",
            lu6_3 =	"lut_b1f6_e3.mem",lu8_3 =	"lut_b1f8_e3.mem",lu10_3 =	"lut_b1f10_e3.mem",lu12_3 =	"lut_b1f12_e3.mem",lu14_3 =	"lut_b1f14_e3.mem",lu16_3 =	"lut_b1f16_e3.mem",lu18_3 =	"lut_b1f18_e3.mem",
            lu6_4 =	"lut_b1f6_e4.mem",lu8_4 =	"lut_b1f8_e4.mem",lu10_4 =	"lut_b1f10_e4.mem",lu12_4 =	"lut_b1f12_e4.mem",lu14_4 =	"lut_b1f14_e4.mem",lu16_4 =	"lut_b1f16_e4.mem",lu18_4 =	"lut_b1f18_e4.mem",
            lu6_5 =	"lut_b1f6_e5.mem",lu8_5 =	"lut_b1f8_e5.mem",lu10_5 =	"lut_b1f10_e5.mem",lu12_5 =	"lut_b1f12_e5.mem",lu14_5 =	"lut_b1f14_e5.mem",lu16_5 =	"lut_b1f16_e5.mem",lu18_5 =	"lut_b1f18_e5.mem";


phvl_lut #(lu6_1,lu8_1,lu10_1,lu12_1,lu14_1,lu16_1,lu18_1)a1(sys_clk,en,fvalue,tvalue,pivalue,eout1t);
phvl_lut #(lu6_2,lu8_2,lu10_2,lu12_2,lu14_2,lu16_2,lu18_2)a2(sys_clk,en,fvalue,tvalue,pivalue,eout2t); 
phvl_lut #(lu6_3,lu8_3,lu10_3,lu12_3,lu14_3,lu16_3,lu18_3)a3(sys_clk,en,fvalue,tvalue,pivalue,eout3t);
phvl_lut #(lu6_4,lu8_4,lu10_4,lu12_4,lu14_4,lu16_4,lu18_4)a4(sys_clk,en,fvalue,tvalue,pivalue,eout4t);
phvl_lut #(lu6_5,lu8_5,lu10_5,lu12_5,lu14_5,lu16_5,lu18_5)a5(sys_clk,en,fvalue,tvalue,pivalue,eout5t);


assign eout1p=eout1t;
assign eout1=eout1t;
assign eout2p=eout2t;
assign eout2=eout2t;
assign eout3p=eout3t;
assign eout3=eout3t;
assign eout4p=eout4t;
assign eout4=eout4t;
assign eout5p=eout5t;
assign eout5=eout5t;


//phvl1 a1(clk,rst,en,fvalue,tvalue,eout1);
//phvl2 a2(clk,rst,en,fvalue,tvalue,eout2); 
//phvl3 a3(clk,rst,en,fvalue,tvalue,eout3);
//phvl4 a4(clk,rst,en,fvalue,tvalue,eout4);
//phvl5 a5(clk,rst,en,fvalue,tvalue,eout5);
//phvl6 a6(clk,rst,en,fvalue,tvalue,eout6);

 

//cnt a15(clk,c_en,rst,cout);
//dmx1 a16(d_en,rst,sel1,I0,I1,I2,I3,I4,I5,I6,I7);
//bff1 a17(rst,I0,I1,I2,I3,I4,I5,I6,I7,eout1,eout2,eout3,eout4,eout5,eout6,eout7,eout8,out);
//mem1 a31(clk,rst,rw,addr,din,dout1,oe);
//syck a41(sys_clk,rst,clk);

endmodule 