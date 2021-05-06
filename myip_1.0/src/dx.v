`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:10 02/04/2019 
// Design Name: 
// Module Name:    dx 
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
module dx(en,sel,f1,f2,f3,f4);
input en;
input [4:0]sel;
output f1,f2,f3,f4;
reg f1,f2,f3,f4;
always@(en or sel )begin

if(en==0 )begin
 f1=1'b0;
 f2=1'b0;
 f3=1'b0;
 f4=1'b0;
 end
 else if(en==1 )
begin
case(sel)
5'b00110:begin
        f1=en;
		  f2=1'b0;
		  f3=1'b0;
		  f4=1'b0;
		end
5'b01010:begin
        f1=1'b0;
		  f2=en;
		  f3=1'b0;
		  f4=1'b0;
		end
5'b01110:begin
        f1=1'b0;
		  f2=1'b0;
		  f3=en;
		  f4=1'b0;
		end
5'b10010:begin
        f1=1'b0;
		  f2=1'b0;
		  f3=1'b0;
		  f4=en;
		end
		endcase
	end
end

endmodule 