`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:15 02/04/2019 
// Design Name: 
// Module Name:    lut57 
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
module lut_f(
    input e_n,
    input [3:0] teta,      // 2 Most significant for phis, 6 LSB for tetas
    input [1:0] piv,
    output [4:0] phase

    );
	 //f1=6;
reg [4:0]lut[63:0];
  wire [5:0] angle={piv,teta};      // 2 Most significant for phis, 6 LSB for tetas
//wire [7:0] piv1;
//wire [7:0]tetal;
//wire [7:0]adr;
//parameter v1=192, v2=63;
parameter f =	"lut_b1f6_e1.txt";
initial
      $readmemb(f, lut, 0, 63);
//		assign pivl=piv & v1;
//		assign tetal =teta & v2;
//                        assign adr = pivl | tetal;
/*always@( teta or e_n )
begin
	
	    if( e_n )
	    begin
//	       piv1 =piv & v1;
//		  tetal =teta & v2;
//		  	  adr = pivl | tetal;
		  phase <= lut[angle];
		end
	else
		phase <= 5'hz;
		
	
end*/
assign phase=e_n?lut[angle]:5'hz;
endmodule 