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
module dx(en,sel,f);
input en;
input [4:0]sel;
output [7:1]f;
reg [7:1] f;
always@(en or sel )begin

if(en==0 )begin
 f[1]=1'b0;
 f[2]=1'b0;
 f[3]=1'b0;
 f[4]=1'b0;
 f[5]=1'b0;
  f[6]=1'b0;
  f[7]=1'b0;
 end
 else if(en==1 )
begin
case(sel)
5'b00110:begin
        f[1]=en;
		 f[2]=1'b0;
        f[3]=1'b0;
        f[4]=1'b0;
        f[5]=1'b0;
         f[6]=1'b0;
         f[7]=1'b0;
		end
5'b01000:begin
                f[1]=1'b0;
                 f[2]=en;
                f[3]=1'b0;
                f[4]=1'b0;
                f[5]=1'b0;
                 f[6]=1'b0;
                 f[7]=1'b0;
                end
5'b01010:begin
          f[1]=1'b0;
		  f[2]=1'b0;
          f[3]=en;
          f[4]=1'b0;
          f[5]=1'b0;
           f[6]=1'b0;
           f[7]=1'b0;
		end

5'b01100:begin
        f[1]=1'b0;
		  f[2]=1'b0;
		  f[3]=1'b0;
		  f[4]=en;
          f[5]=1'b0;
          f[6]=1'b0;
          f[7]=1'b0;
		end
5'b01110:begin
          f[1]=1'b0;
		  f[2]=1'b0;
		  f[3]=1'b0;
		  f[4]=1'b0;
		  f[5]=en;
          f[6]=1'b0;
          f[7]=1'b0;
		end
5'b10000:begin
                  f[1]=1'b0;
                  f[2]=1'b0;
                  f[3]=1'b0;
                  f[4]=1'b0;
                  f[5]=1'b0;
                  f[6]=en;
                  f[7]=1'b0;
                end
5'b10010:begin
                          f[1]=1'b0;
                          f[2]=1'b0;
                          f[3]=1'b0;
                          f[4]=1'b0;
                          f[5]=1'b0;
                          f[6]=1'b0;
                          f[7]=en;
                        end
		endcase
	end
end

endmodule 