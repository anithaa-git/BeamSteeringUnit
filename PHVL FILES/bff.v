`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:49 02/04/2019 
// Design Name: 
// Module Name:    bff 
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
module bff(clk,buff_in,buff_out);
input clk;//,rst;
input[4:0] buff_in;
output reg [4:0] buff_out;
always@(posedge clk)
begin
//if(rst )
  
    
   //  buff_out<=5'b0;
	 
	// else
	    
	   buff_out<=buff_in;
		  
		  
		  end
endmodule 