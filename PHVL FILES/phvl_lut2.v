`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// company: 
// engineer: 
// 
// create date:    18:36:25 02/04/2019 
// design name: 
// module name:    phvl1 
// project name: 
// target devices: 
// tool versions: 
// description: 
//
// dependencies: 
//
// revision: 
// revision 0.01 - file created
// additional comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//module phvl_lut(clk,rst,en,sel,teta,buff_out);
module phvl_lut(clk,en,sel,teta,piv,buff_out);
input clk,en;
input[3:0]piv;
input [5:0]teta;
input [4:0]sel;
output [4:0]buff_out;
wire [4:0]buff_in;
wire [4:0] phase;
wire [7:1] f;
parameter lu6 =	"lut_b1f6_e1.mem",lu8 =	"lut_b1f8_e1.mem", lu10 =	"lut_b1f10_e1.mem", lu12 =	"lut_b1f12_e1.mem", lu14 =	"lut_b1f14_e1.mem", lu16 =	"lut_b1f16_e1.mem", lu18 =	"lut_b1f18_e1.mem";
assign buff_in=phase;
dx  a1(en,sel,f);
//dxpi a2(en,piv,pi1,pi2,pi3);
lut_f #(lu6)l6(f[1],teta,piv,phase);
lut_f #(lu8)l8(f[2],teta,piv,phase);
lut_f #(lu10)l10(f[3],teta,piv,phase);
lut_f #(lu12)l12(f[4],teta,piv,phase);
lut_f #(lu14)l14(f[5],teta,piv,phase);
lut_f #(lu16)l16(f[6],teta,piv,phase);
lut_f #(lu18)l18(f[7],teta,piv,phase);

bff b1(clk,buff_in,buff_out);
endmodule 