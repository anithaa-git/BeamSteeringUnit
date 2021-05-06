
`timescale 1 ns / 1 ps

	module myip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line
       parameter lu6_1 =	"lut_b1f6_e1.mem",lu10_1 =	"lut_b1f10_e1.mem",lu14_1 =	"lut_b1f14_e1.mem",lu18_1 =	"lut_b1f18_e1.mem",
                            lu6_2 =    "lut_b1f6_e2.mem",lu10_2 =    "lut_b1f10_e2.mem",lu14_2 =    "lut_b1f14_e2.mem",lu18_2 =    "lut_b1f18_e2.mem",
                            lu6_3 =    "lut_b1f6_e3.mem",lu10_3 =    "lut_b1f10_e3.mem",lu14_3 =    "lut_b1f14_e3.mem",lu18_3 =    "lut_b1f18_e3.mem",
                            lu6_4 =    "lut_b1f6_e4.mem",lu10_4 =    "lut_b1f10_e4.mem",lu14_4 =    "lut_b1f14_e4.mem",lu18_4 =    "lut_b1f18_e4.mem",
                            lu6_5 =    "lut_b1f6_e5.mem",lu10_5 =    "lut_b1f10_e5.mem",lu14_5 =    "lut_b1f14_e5.mem",lu18_5 =    "lut_b1f18_e5.mem",

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
output [4:1]JA,JB,JC,
output [2:1]JD,
            output [10:7]JA1,JC1,
            output [9:7]JB1,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
myip_v1_0_S00_AXI # ( lu6_1, lu10_1, lu14_1, lu18_1,lu6_2, lu10_2, lu14_2,lu18_2,lu6_3,lu10_3,lu14_3,lu18_3,
      lu6_4,lu10_4,lu14_4,lu18_4,lu6_5,lu10_5,lu14_5,lu18_5,
		C_S00_AXI_DATA_WIDTH,
		C_S00_AXI_ADDR_WIDTH
	) myip_v1_0_S00_AXI_inst ( .eout1p({JA1[7],JA[4:1]}),.eout2p({JB[2:1],JA1[10:8]}),
              .eout3p({JB1[9:7],JB[4:3]}),.eout4p({JC1[7],JC[4:1]}),
              .eout5p({JD[2:1],JC1[10:8]}),

	
	
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
