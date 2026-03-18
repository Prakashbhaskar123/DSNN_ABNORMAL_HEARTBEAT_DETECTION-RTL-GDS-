/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP5-4
// Date      : Sat Mar  7 10:41:40 2026
/////////////////////////////////////////////////////////////


module DataShift_WIDTH16 ( data_in, clk, rst, data_out );
  input [15:0] data_in;
  output [15:0] data_out;
  input clk, rst;
  wire   n1;
  tri   clk;
  tri   rst;
  tri   [15:0] data_out;

  DFFARX1_RVT \data_out_reg[15]  ( .D(data_in[14]), .CLK(clk), .RSTB(n1), .Q(
        data_out[15]) );
  DFFARX1_RVT \data_out_reg[14]  ( .D(data_in[13]), .CLK(clk), .RSTB(n1), .Q(
        data_out[14]) );
  DFFARX1_RVT \data_out_reg[13]  ( .D(data_in[12]), .CLK(clk), .RSTB(n1), .Q(
        data_out[13]) );
  DFFARX1_RVT \data_out_reg[12]  ( .D(data_in[11]), .CLK(clk), .RSTB(n1), .Q(
        data_out[12]) );
  DFFARX1_RVT \data_out_reg[11]  ( .D(data_in[10]), .CLK(clk), .RSTB(n1), .Q(
        data_out[11]) );
  DFFARX1_RVT \data_out_reg[10]  ( .D(data_in[9]), .CLK(clk), .RSTB(n1), .Q(
        data_out[10]) );
  DFFARX1_RVT \data_out_reg[9]  ( .D(data_in[8]), .CLK(clk), .RSTB(n1), .Q(
        data_out[9]) );
  DFFARX1_RVT \data_out_reg[8]  ( .D(data_in[7]), .CLK(clk), .RSTB(n1), .Q(
        data_out[8]) );
  DFFARX1_RVT \data_out_reg[7]  ( .D(data_in[6]), .CLK(clk), .RSTB(n1), .Q(
        data_out[7]) );
  DFFARX1_RVT \data_out_reg[6]  ( .D(data_in[5]), .CLK(clk), .RSTB(n1), .Q(
        data_out[6]) );
  DFFARX1_RVT \data_out_reg[5]  ( .D(data_in[4]), .CLK(clk), .RSTB(n1), .Q(
        data_out[5]) );
  DFFARX1_RVT \data_out_reg[4]  ( .D(data_in[3]), .CLK(clk), .RSTB(n1), .Q(
        data_out[4]) );
  DFFARX1_RVT \data_out_reg[3]  ( .D(data_in[2]), .CLK(clk), .RSTB(n1), .Q(
        data_out[3]) );
  DFFARX1_RVT \data_out_reg[2]  ( .D(data_in[1]), .CLK(clk), .RSTB(n1), .Q(
        data_out[2]) );
  DFFARX1_RVT \data_out_reg[1]  ( .D(data_in[0]), .CLK(clk), .RSTB(n1), .Q(
        data_out[1]) );
  DFFARX1_RVT \data_out_reg[0]  ( .D(data_in[15]), .CLK(clk), .RSTB(n1), .Q(
        data_out[0]) );
  INVX4_RVT U3 ( .A(rst), .Y(n1) );
endmodule


module Neuron_WIDTH16_3 ( mac_out, neuron_out );
  input [31:0] mac_out;
  output [15:0] neuron_out;
  wire   n1;
  tri   [31:0] mac_out;

  INVX2_RVT U2 ( .A(mac_out[31]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(mac_out[9]), .A2(n1), .Y(neuron_out[9]) );
  AND2X1_RVT U4 ( .A1(mac_out[8]), .A2(n1), .Y(neuron_out[8]) );
  AND2X1_RVT U5 ( .A1(mac_out[7]), .A2(n1), .Y(neuron_out[7]) );
  AND2X1_RVT U6 ( .A1(mac_out[6]), .A2(n1), .Y(neuron_out[6]) );
  AND2X1_RVT U7 ( .A1(mac_out[5]), .A2(n1), .Y(neuron_out[5]) );
  AND2X1_RVT U8 ( .A1(mac_out[4]), .A2(n1), .Y(neuron_out[4]) );
  AND2X1_RVT U9 ( .A1(mac_out[3]), .A2(n1), .Y(neuron_out[3]) );
  AND2X1_RVT U10 ( .A1(mac_out[2]), .A2(n1), .Y(neuron_out[2]) );
  AND2X1_RVT U11 ( .A1(mac_out[1]), .A2(n1), .Y(neuron_out[1]) );
  AND2X1_RVT U12 ( .A1(mac_out[15]), .A2(n1), .Y(neuron_out[15]) );
  AND2X1_RVT U13 ( .A1(mac_out[14]), .A2(n1), .Y(neuron_out[14]) );
  AND2X1_RVT U14 ( .A1(mac_out[13]), .A2(n1), .Y(neuron_out[13]) );
  AND2X1_RVT U15 ( .A1(mac_out[12]), .A2(n1), .Y(neuron_out[12]) );
  AND2X1_RVT U16 ( .A1(mac_out[11]), .A2(n1), .Y(neuron_out[11]) );
  AND2X1_RVT U17 ( .A1(mac_out[10]), .A2(n1), .Y(neuron_out[10]) );
  AND2X1_RVT U18 ( .A1(mac_out[0]), .A2(n1), .Y(neuron_out[0]) );
endmodule


module Neuron_WIDTH16_2 ( mac_out, neuron_out );
  input [31:0] mac_out;
  output [15:0] neuron_out;
  wire   n1;
  tri   [31:0] mac_out;

  INVX2_RVT U2 ( .A(mac_out[31]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(mac_out[9]), .A2(n1), .Y(neuron_out[9]) );
  AND2X1_RVT U4 ( .A1(mac_out[8]), .A2(n1), .Y(neuron_out[8]) );
  AND2X1_RVT U5 ( .A1(mac_out[7]), .A2(n1), .Y(neuron_out[7]) );
  AND2X1_RVT U6 ( .A1(mac_out[6]), .A2(n1), .Y(neuron_out[6]) );
  AND2X1_RVT U7 ( .A1(mac_out[5]), .A2(n1), .Y(neuron_out[5]) );
  AND2X1_RVT U8 ( .A1(mac_out[4]), .A2(n1), .Y(neuron_out[4]) );
  AND2X1_RVT U9 ( .A1(mac_out[3]), .A2(n1), .Y(neuron_out[3]) );
  AND2X1_RVT U10 ( .A1(mac_out[2]), .A2(n1), .Y(neuron_out[2]) );
  AND2X1_RVT U11 ( .A1(mac_out[1]), .A2(n1), .Y(neuron_out[1]) );
  AND2X1_RVT U12 ( .A1(mac_out[15]), .A2(n1), .Y(neuron_out[15]) );
  AND2X1_RVT U13 ( .A1(mac_out[14]), .A2(n1), .Y(neuron_out[14]) );
  AND2X1_RVT U14 ( .A1(mac_out[13]), .A2(n1), .Y(neuron_out[13]) );
  AND2X1_RVT U15 ( .A1(mac_out[12]), .A2(n1), .Y(neuron_out[12]) );
  AND2X1_RVT U16 ( .A1(mac_out[11]), .A2(n1), .Y(neuron_out[11]) );
  AND2X1_RVT U17 ( .A1(mac_out[10]), .A2(n1), .Y(neuron_out[10]) );
  AND2X1_RVT U18 ( .A1(mac_out[0]), .A2(n1), .Y(neuron_out[0]) );
endmodule


module Neuron_WIDTH16_1 ( mac_out, neuron_out );
  input [31:0] mac_out;
  output [15:0] neuron_out;
  wire   n1;
  tri   [31:0] mac_out;

  INVX2_RVT U2 ( .A(mac_out[31]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(mac_out[9]), .A2(n1), .Y(neuron_out[9]) );
  AND2X1_RVT U4 ( .A1(mac_out[8]), .A2(n1), .Y(neuron_out[8]) );
  AND2X1_RVT U5 ( .A1(mac_out[7]), .A2(n1), .Y(neuron_out[7]) );
  AND2X1_RVT U6 ( .A1(mac_out[6]), .A2(n1), .Y(neuron_out[6]) );
  AND2X1_RVT U7 ( .A1(mac_out[5]), .A2(n1), .Y(neuron_out[5]) );
  AND2X1_RVT U8 ( .A1(mac_out[4]), .A2(n1), .Y(neuron_out[4]) );
  AND2X1_RVT U9 ( .A1(mac_out[3]), .A2(n1), .Y(neuron_out[3]) );
  AND2X1_RVT U10 ( .A1(mac_out[2]), .A2(n1), .Y(neuron_out[2]) );
  AND2X1_RVT U11 ( .A1(mac_out[1]), .A2(n1), .Y(neuron_out[1]) );
  AND2X1_RVT U12 ( .A1(mac_out[15]), .A2(n1), .Y(neuron_out[15]) );
  AND2X1_RVT U13 ( .A1(mac_out[14]), .A2(n1), .Y(neuron_out[14]) );
  AND2X1_RVT U14 ( .A1(mac_out[13]), .A2(n1), .Y(neuron_out[13]) );
  AND2X1_RVT U15 ( .A1(mac_out[12]), .A2(n1), .Y(neuron_out[12]) );
  AND2X1_RVT U16 ( .A1(mac_out[11]), .A2(n1), .Y(neuron_out[11]) );
  AND2X1_RVT U17 ( .A1(mac_out[10]), .A2(n1), .Y(neuron_out[10]) );
  AND2X1_RVT U18 ( .A1(mac_out[0]), .A2(n1), .Y(neuron_out[0]) );
endmodule


module Neuron_WIDTH16_0 ( mac_out, neuron_out );
  input [31:0] mac_out;
  output [15:0] neuron_out;
  wire   n1;
  tri   [31:0] mac_out;

  INVX2_RVT U2 ( .A(mac_out[31]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(mac_out[9]), .A2(n1), .Y(neuron_out[9]) );
  AND2X1_RVT U4 ( .A1(mac_out[8]), .A2(n1), .Y(neuron_out[8]) );
  AND2X1_RVT U5 ( .A1(mac_out[7]), .A2(n1), .Y(neuron_out[7]) );
  AND2X1_RVT U6 ( .A1(mac_out[6]), .A2(n1), .Y(neuron_out[6]) );
  AND2X1_RVT U7 ( .A1(mac_out[5]), .A2(n1), .Y(neuron_out[5]) );
  AND2X1_RVT U8 ( .A1(mac_out[4]), .A2(n1), .Y(neuron_out[4]) );
  AND2X1_RVT U9 ( .A1(mac_out[3]), .A2(n1), .Y(neuron_out[3]) );
  AND2X1_RVT U10 ( .A1(mac_out[2]), .A2(n1), .Y(neuron_out[2]) );
  AND2X1_RVT U11 ( .A1(mac_out[1]), .A2(n1), .Y(neuron_out[1]) );
  AND2X1_RVT U12 ( .A1(mac_out[15]), .A2(n1), .Y(neuron_out[15]) );
  AND2X1_RVT U13 ( .A1(mac_out[14]), .A2(n1), .Y(neuron_out[14]) );
  AND2X1_RVT U14 ( .A1(mac_out[13]), .A2(n1), .Y(neuron_out[13]) );
  AND2X1_RVT U15 ( .A1(mac_out[12]), .A2(n1), .Y(neuron_out[12]) );
  AND2X1_RVT U16 ( .A1(mac_out[11]), .A2(n1), .Y(neuron_out[11]) );
  AND2X1_RVT U17 ( .A1(mac_out[10]), .A2(n1), .Y(neuron_out[10]) );
  AND2X1_RVT U18 ( .A1(mac_out[0]), .A2(n1), .Y(neuron_out[0]) );
endmodule


module DSNN_2Layer_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FADDX1_RVT U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1_RVT U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1_RVT U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1_RVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1_RVT U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1_RVT U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1_RVT U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(SUM[1]) );
  XOR2X1_RVT U2 ( .A1(A[17]), .A2(carry[17]), .Y(SUM[17]) );
  XOR2X1_RVT U3 ( .A1(A[30]), .A2(carry[30]), .Y(SUM[30]) );
  XOR2X1_RVT U4 ( .A1(A[29]), .A2(carry[29]), .Y(SUM[29]) );
  XOR2X1_RVT U5 ( .A1(A[28]), .A2(carry[28]), .Y(SUM[28]) );
  XOR2X1_RVT U6 ( .A1(A[27]), .A2(carry[27]), .Y(SUM[27]) );
  XOR2X1_RVT U7 ( .A1(A[26]), .A2(carry[26]), .Y(SUM[26]) );
  XOR2X1_RVT U8 ( .A1(A[25]), .A2(carry[25]), .Y(SUM[25]) );
  XOR2X1_RVT U9 ( .A1(A[24]), .A2(carry[24]), .Y(SUM[24]) );
  XOR2X1_RVT U10 ( .A1(A[23]), .A2(carry[23]), .Y(SUM[23]) );
  XOR2X1_RVT U11 ( .A1(A[22]), .A2(carry[22]), .Y(SUM[22]) );
  XOR2X1_RVT U12 ( .A1(A[21]), .A2(carry[21]), .Y(SUM[21]) );
  XOR2X1_RVT U13 ( .A1(A[20]), .A2(carry[20]), .Y(SUM[20]) );
  XOR2X1_RVT U14 ( .A1(A[19]), .A2(carry[19]), .Y(SUM[19]) );
  XOR2X1_RVT U15 ( .A1(A[18]), .A2(carry[18]), .Y(SUM[18]) );
  XNOR2X1_RVT U16 ( .A1(A[31]), .A2(n1), .Y(SUM[31]) );
  NAND2X0_RVT U17 ( .A1(A[30]), .A2(carry[30]), .Y(n1) );
  AND2X1_RVT U18 ( .A1(A[29]), .A2(carry[29]), .Y(carry[30]) );
  AND2X1_RVT U19 ( .A1(A[28]), .A2(carry[28]), .Y(carry[29]) );
  AND2X1_RVT U20 ( .A1(A[27]), .A2(carry[27]), .Y(carry[28]) );
  AND2X1_RVT U21 ( .A1(A[26]), .A2(carry[26]), .Y(carry[27]) );
  AND2X1_RVT U22 ( .A1(A[25]), .A2(carry[25]), .Y(carry[26]) );
  AND2X1_RVT U23 ( .A1(A[24]), .A2(carry[24]), .Y(carry[25]) );
  AND2X1_RVT U24 ( .A1(A[23]), .A2(carry[23]), .Y(carry[24]) );
  AND2X1_RVT U25 ( .A1(A[22]), .A2(carry[22]), .Y(carry[23]) );
  AND2X1_RVT U26 ( .A1(A[21]), .A2(carry[21]), .Y(carry[22]) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(carry[20]), .Y(carry[21]) );
  AND2X1_RVT U28 ( .A1(A[19]), .A2(carry[19]), .Y(carry[20]) );
  AND2X1_RVT U29 ( .A1(A[18]), .A2(carry[18]), .Y(carry[19]) );
  AND2X1_RVT U30 ( .A1(A[17]), .A2(carry[17]), .Y(carry[18]) );
  AND2X1_RVT U31 ( .A1(A[1]), .A2(B[1]), .Y(carry[2]) );
endmodule


module DSNN_2Layer_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FADDX1_RVT U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1_RVT U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1_RVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1_RVT U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1_RVT U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1_RVT U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  XOR2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(A[16]), .A2(carry[16]), .Y(SUM[16]) );
  XOR2X1_RVT U3 ( .A1(A[30]), .A2(carry[30]), .Y(SUM[30]) );
  XOR2X1_RVT U4 ( .A1(A[29]), .A2(carry[29]), .Y(SUM[29]) );
  XOR2X1_RVT U5 ( .A1(A[28]), .A2(carry[28]), .Y(SUM[28]) );
  XOR2X1_RVT U6 ( .A1(A[27]), .A2(carry[27]), .Y(SUM[27]) );
  XOR2X1_RVT U7 ( .A1(A[26]), .A2(carry[26]), .Y(SUM[26]) );
  XOR2X1_RVT U8 ( .A1(A[25]), .A2(carry[25]), .Y(SUM[25]) );
  XOR2X1_RVT U9 ( .A1(A[24]), .A2(carry[24]), .Y(SUM[24]) );
  XOR2X1_RVT U10 ( .A1(A[23]), .A2(carry[23]), .Y(SUM[23]) );
  XOR2X1_RVT U11 ( .A1(A[22]), .A2(carry[22]), .Y(SUM[22]) );
  XOR2X1_RVT U12 ( .A1(A[21]), .A2(carry[21]), .Y(SUM[21]) );
  XOR2X1_RVT U13 ( .A1(A[20]), .A2(carry[20]), .Y(SUM[20]) );
  XOR2X1_RVT U14 ( .A1(A[19]), .A2(carry[19]), .Y(SUM[19]) );
  XOR2X1_RVT U15 ( .A1(A[18]), .A2(carry[18]), .Y(SUM[18]) );
  XOR2X1_RVT U16 ( .A1(A[17]), .A2(carry[17]), .Y(SUM[17]) );
  XNOR2X1_RVT U17 ( .A1(A[31]), .A2(n1), .Y(SUM[31]) );
  NAND2X0_RVT U18 ( .A1(A[30]), .A2(carry[30]), .Y(n1) );
  AND2X1_RVT U19 ( .A1(A[29]), .A2(carry[29]), .Y(carry[30]) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(carry[28]), .Y(carry[29]) );
  AND2X1_RVT U21 ( .A1(A[27]), .A2(carry[27]), .Y(carry[28]) );
  AND2X1_RVT U22 ( .A1(A[26]), .A2(carry[26]), .Y(carry[27]) );
  AND2X1_RVT U23 ( .A1(A[25]), .A2(carry[25]), .Y(carry[26]) );
  AND2X1_RVT U24 ( .A1(A[24]), .A2(carry[24]), .Y(carry[25]) );
  AND2X1_RVT U25 ( .A1(A[23]), .A2(carry[23]), .Y(carry[24]) );
  AND2X1_RVT U26 ( .A1(A[22]), .A2(carry[22]), .Y(carry[23]) );
  AND2X1_RVT U27 ( .A1(A[21]), .A2(carry[21]), .Y(carry[22]) );
  AND2X1_RVT U28 ( .A1(A[20]), .A2(carry[20]), .Y(carry[21]) );
  AND2X1_RVT U29 ( .A1(A[19]), .A2(carry[19]), .Y(carry[20]) );
  AND2X1_RVT U30 ( .A1(A[18]), .A2(carry[18]), .Y(carry[19]) );
  AND2X1_RVT U31 ( .A1(A[17]), .A2(carry[17]), .Y(carry[18]) );
  AND2X1_RVT U32 ( .A1(A[16]), .A2(carry[16]), .Y(carry[17]) );
  AND2X1_RVT U33 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
endmodule


module DSNN_2Layer ( clk, rst, ecg_in, layer2_out_flat );
  input [15:0] ecg_in;
  output [31:0] layer2_out_flat;
  input clk, rst;
  wire   \layer1_out[3][15] , \layer1_out[3][14] , \layer1_out[3][13] ,
         \layer1_out[3][12] , \layer1_out[3][11] , \layer1_out[3][10] ,
         \layer1_out[3][9] , \layer1_out[3][8] , \layer1_out[3][7] ,
         \layer1_out[3][6] , \layer1_out[3][5] , \layer1_out[3][4] ,
         \layer1_out[3][3] , \layer1_out[3][2] , \layer1_out[3][1] ,
         \layer1_out[3][0] , \layer2[0].acc[31] , \layer2[0].acc[30] ,
         \layer2[0].acc[29] , \layer2[0].acc[28] , \layer2[0].acc[27] ,
         \layer2[0].acc[26] , \layer2[0].acc[25] , \layer2[0].acc[24] ,
         \layer2[0].acc[23] , \layer2[0].acc[22] , \layer2[0].acc[21] ,
         \layer2[0].acc[20] , \layer2[0].acc[19] , \layer2[0].acc[18] ,
         \layer2[0].acc[17] , \layer2[0].acc[16] , N1, N2, N3, N4, N5, N6, N7,
         N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         \layer2[1].acc[31] , \layer2[1].acc[30] , \layer2[1].acc[29] ,
         \layer2[1].acc[28] , \layer2[1].acc[27] , \layer2[1].acc[26] ,
         \layer2[1].acc[25] , \layer2[1].acc[24] , \layer2[1].acc[23] ,
         \layer2[1].acc[22] , \layer2[1].acc[21] , \layer2[1].acc[20] ,
         \layer2[1].acc[19] , \layer2[1].acc[18] , \layer2[1].acc[17] ,
         \layer2[1].acc[16] , N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, n1, n4, n5, n6, n7, n8;
  tri   clk;
  tri   rst;
  tri   [15:0] shifted_data;
  tri   \layer1_mac_out[0][31] ;
  tri   \layer1_mac_out[0][30] ;
  tri   \layer1_mac_out[0][29] ;
  tri   \layer1_mac_out[0][28] ;
  tri   \layer1_mac_out[0][27] ;
  tri   \layer1_mac_out[0][26] ;
  tri   \layer1_mac_out[0][25] ;
  tri   \layer1_mac_out[0][24] ;
  tri   \layer1_mac_out[0][23] ;
  tri   \layer1_mac_out[0][22] ;
  tri   \layer1_mac_out[0][21] ;
  tri   \layer1_mac_out[0][20] ;
  tri   \layer1_mac_out[0][19] ;
  tri   \layer1_mac_out[0][18] ;
  tri   \layer1_mac_out[0][17] ;
  tri   \layer1_mac_out[0][16] ;
  tri   \layer1_mac_out[0][15] ;
  tri   \layer1_mac_out[0][14] ;
  tri   \layer1_mac_out[0][13] ;
  tri   \layer1_mac_out[0][12] ;
  tri   \layer1_mac_out[0][11] ;
  tri   \layer1_mac_out[0][10] ;
  tri   \layer1_mac_out[0][9] ;
  tri   \layer1_mac_out[0][8] ;
  tri   \layer1_mac_out[0][7] ;
  tri   \layer1_mac_out[0][6] ;
  tri   \layer1_mac_out[0][5] ;
  tri   \layer1_mac_out[0][4] ;
  tri   \layer1_mac_out[0][3] ;
  tri   \layer1_mac_out[0][2] ;
  tri   \layer1_mac_out[0][1] ;
  tri   \layer1_mac_out[0][0] ;
  tri   \layer1_mac_out[1][31] ;
  tri   \layer1_mac_out[1][30] ;
  tri   \layer1_mac_out[1][29] ;
  tri   \layer1_mac_out[1][28] ;
  tri   \layer1_mac_out[1][27] ;
  tri   \layer1_mac_out[1][26] ;
  tri   \layer1_mac_out[1][25] ;
  tri   \layer1_mac_out[1][24] ;
  tri   \layer1_mac_out[1][23] ;
  tri   \layer1_mac_out[1][22] ;
  tri   \layer1_mac_out[1][21] ;
  tri   \layer1_mac_out[1][20] ;
  tri   \layer1_mac_out[1][19] ;
  tri   \layer1_mac_out[1][18] ;
  tri   \layer1_mac_out[1][17] ;
  tri   \layer1_mac_out[1][16] ;
  tri   \layer1_mac_out[1][15] ;
  tri   \layer1_mac_out[1][14] ;
  tri   \layer1_mac_out[1][13] ;
  tri   \layer1_mac_out[1][12] ;
  tri   \layer1_mac_out[1][11] ;
  tri   \layer1_mac_out[1][10] ;
  tri   \layer1_mac_out[1][9] ;
  tri   \layer1_mac_out[1][8] ;
  tri   \layer1_mac_out[1][7] ;
  tri   \layer1_mac_out[1][6] ;
  tri   \layer1_mac_out[1][5] ;
  tri   \layer1_mac_out[1][4] ;
  tri   \layer1_mac_out[1][3] ;
  tri   \layer1_mac_out[1][2] ;
  tri   \layer1_mac_out[1][1] ;
  tri   \layer1_mac_out[1][0] ;
  tri   \layer1_mac_out[2][31] ;
  tri   \layer1_mac_out[2][30] ;
  tri   \layer1_mac_out[2][29] ;
  tri   \layer1_mac_out[2][28] ;
  tri   \layer1_mac_out[2][27] ;
  tri   \layer1_mac_out[2][26] ;
  tri   \layer1_mac_out[2][25] ;
  tri   \layer1_mac_out[2][24] ;
  tri   \layer1_mac_out[2][23] ;
  tri   \layer1_mac_out[2][22] ;
  tri   \layer1_mac_out[2][21] ;
  tri   \layer1_mac_out[2][20] ;
  tri   \layer1_mac_out[2][19] ;
  tri   \layer1_mac_out[2][18] ;
  tri   \layer1_mac_out[2][17] ;
  tri   \layer1_mac_out[2][16] ;
  tri   \layer1_mac_out[2][15] ;
  tri   \layer1_mac_out[2][14] ;
  tri   \layer1_mac_out[2][13] ;
  tri   \layer1_mac_out[2][12] ;
  tri   \layer1_mac_out[2][11] ;
  tri   \layer1_mac_out[2][10] ;
  tri   \layer1_mac_out[2][9] ;
  tri   \layer1_mac_out[2][8] ;
  tri   \layer1_mac_out[2][7] ;
  tri   \layer1_mac_out[2][6] ;
  tri   \layer1_mac_out[2][5] ;
  tri   \layer1_mac_out[2][4] ;
  tri   \layer1_mac_out[2][3] ;
  tri   \layer1_mac_out[2][2] ;
  tri   \layer1_mac_out[2][1] ;
  tri   \layer1_mac_out[2][0] ;
  tri   \layer1_mac_out[3][31] ;
  tri   \layer1_mac_out[3][30] ;
  tri   \layer1_mac_out[3][29] ;
  tri   \layer1_mac_out[3][28] ;
  tri   \layer1_mac_out[3][27] ;
  tri   \layer1_mac_out[3][26] ;
  tri   \layer1_mac_out[3][25] ;
  tri   \layer1_mac_out[3][24] ;
  tri   \layer1_mac_out[3][23] ;
  tri   \layer1_mac_out[3][22] ;
  tri   \layer1_mac_out[3][21] ;
  tri   \layer1_mac_out[3][20] ;
  tri   \layer1_mac_out[3][19] ;
  tri   \layer1_mac_out[3][18] ;
  tri   \layer1_mac_out[3][17] ;
  tri   \layer1_mac_out[3][16] ;
  tri   \layer1_mac_out[3][15] ;
  tri   \layer1_mac_out[3][14] ;
  tri   \layer1_mac_out[3][13] ;
  tri   \layer1_mac_out[3][12] ;
  tri   \layer1_mac_out[3][11] ;
  tri   \layer1_mac_out[3][10] ;
  tri   \layer1_mac_out[3][9] ;
  tri   \layer1_mac_out[3][8] ;
  tri   \layer1_mac_out[3][7] ;
  tri   \layer1_mac_out[3][6] ;
  tri   \layer1_mac_out[3][5] ;
  tri   \layer1_mac_out[3][4] ;
  tri   \layer1_mac_out[3][3] ;
  tri   \layer1_mac_out[3][2] ;
  tri   \layer1_mac_out[3][1] ;
  tri   \layer1_mac_out[3][0] ;
  tri   n9;
  tri   n10;
  tri   n11;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign layer2_out_flat[16] = 1'b0;

  DFFARX1_RVT \layer2[0].acc_reg[0]  ( .D(N1), .CLK(clk), .RSTB(n7), .Q(
        layer2_out_flat[0]) );
  DFFARX1_RVT \layer2[0].acc_reg[1]  ( .D(N2), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[1]) );
  DFFARX1_RVT \layer2[0].acc_reg[2]  ( .D(N3), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[2]) );
  DFFARX1_RVT \layer2[0].acc_reg[3]  ( .D(N4), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[3]) );
  DFFARX1_RVT \layer2[0].acc_reg[4]  ( .D(N5), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[4]) );
  DFFARX1_RVT \layer2[0].acc_reg[5]  ( .D(N6), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[5]) );
  DFFARX1_RVT \layer2[0].acc_reg[6]  ( .D(N7), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[6]) );
  DFFARX1_RVT \layer2[0].acc_reg[7]  ( .D(N8), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[7]) );
  DFFARX1_RVT \layer2[0].acc_reg[8]  ( .D(N9), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[8]) );
  DFFARX1_RVT \layer2[0].acc_reg[9]  ( .D(N10), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[9]) );
  DFFARX1_RVT \layer2[0].acc_reg[10]  ( .D(N11), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[10]) );
  DFFARX1_RVT \layer2[0].acc_reg[11]  ( .D(N12), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[11]) );
  DFFARX1_RVT \layer2[0].acc_reg[12]  ( .D(N13), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[12]) );
  DFFARX1_RVT \layer2[0].acc_reg[13]  ( .D(N14), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[13]) );
  DFFARX1_RVT \layer2[0].acc_reg[14]  ( .D(N15), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[14]) );
  DFFARX1_RVT \layer2[0].acc_reg[15]  ( .D(N16), .CLK(clk), .RSTB(n5), .Q(
        layer2_out_flat[15]) );
  DFFARX1_RVT \layer2[0].acc_reg[16]  ( .D(N17), .CLK(clk), .RSTB(n8), .Q(
        \layer2[0].acc[16] ) );
  DFFARX1_RVT \layer2[0].acc_reg[17]  ( .D(N18), .CLK(clk), .RSTB(n6), .Q(
        \layer2[0].acc[17] ) );
  DFFARX1_RVT \layer2[0].acc_reg[18]  ( .D(N19), .CLK(clk), .RSTB(n7), .Q(
        \layer2[0].acc[18] ) );
  DFFARX1_RVT \layer2[0].acc_reg[19]  ( .D(N20), .CLK(clk), .RSTB(n8), .Q(
        \layer2[0].acc[19] ) );
  DFFARX1_RVT \layer2[0].acc_reg[20]  ( .D(N21), .CLK(clk), .RSTB(n6), .Q(
        \layer2[0].acc[20] ) );
  DFFARX1_RVT \layer2[0].acc_reg[21]  ( .D(N22), .CLK(clk), .RSTB(n7), .Q(
        \layer2[0].acc[21] ) );
  DFFARX1_RVT \layer2[0].acc_reg[22]  ( .D(N23), .CLK(clk), .RSTB(n8), .Q(
        \layer2[0].acc[22] ) );
  DFFARX1_RVT \layer2[0].acc_reg[23]  ( .D(N24), .CLK(clk), .RSTB(n6), .Q(
        \layer2[0].acc[23] ) );
  DFFARX1_RVT \layer2[0].acc_reg[24]  ( .D(N25), .CLK(clk), .RSTB(n7), .Q(
        \layer2[0].acc[24] ) );
  DFFARX1_RVT \layer2[0].acc_reg[25]  ( .D(N26), .CLK(clk), .RSTB(n8), .Q(
        \layer2[0].acc[25] ) );
  DFFARX1_RVT \layer2[0].acc_reg[26]  ( .D(N27), .CLK(clk), .RSTB(n6), .Q(
        \layer2[0].acc[26] ) );
  DFFARX1_RVT \layer2[0].acc_reg[27]  ( .D(N28), .CLK(clk), .RSTB(n7), .Q(
        \layer2[0].acc[27] ) );
  DFFARX1_RVT \layer2[0].acc_reg[28]  ( .D(N29), .CLK(clk), .RSTB(n8), .Q(
        \layer2[0].acc[28] ) );
  DFFARX1_RVT \layer2[0].acc_reg[29]  ( .D(N30), .CLK(clk), .RSTB(n6), .Q(
        \layer2[0].acc[29] ) );
  DFFARX1_RVT \layer2[0].acc_reg[30]  ( .D(N31), .CLK(clk), .RSTB(n7), .Q(
        \layer2[0].acc[30] ) );
  DFFARX1_RVT \layer2[0].acc_reg[31]  ( .D(N32), .CLK(clk), .RSTB(n5), .Q(
        \layer2[0].acc[31] ) );
  DFFARX1_RVT \layer2[1].acc_reg[1]  ( .D(N35), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[17]) );
  DFFARX1_RVT \layer2[1].acc_reg[2]  ( .D(N36), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[18]) );
  DFFARX1_RVT \layer2[1].acc_reg[3]  ( .D(N37), .CLK(clk), .RSTB(n8), .Q(
        layer2_out_flat[19]) );
  DFFARX1_RVT \layer2[1].acc_reg[4]  ( .D(N38), .CLK(clk), .RSTB(n7), .Q(
        layer2_out_flat[20]) );
  DFFARX1_RVT \layer2[1].acc_reg[5]  ( .D(N39), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[21]) );
  DFFARX1_RVT \layer2[1].acc_reg[6]  ( .D(N40), .CLK(clk), .RSTB(n8), .Q(
        layer2_out_flat[22]) );
  DFFARX1_RVT \layer2[1].acc_reg[7]  ( .D(N41), .CLK(clk), .RSTB(n7), .Q(
        layer2_out_flat[23]) );
  DFFARX1_RVT \layer2[1].acc_reg[8]  ( .D(N42), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[24]) );
  DFFARX1_RVT \layer2[1].acc_reg[9]  ( .D(N43), .CLK(clk), .RSTB(n8), .Q(
        layer2_out_flat[25]) );
  DFFARX1_RVT \layer2[1].acc_reg[10]  ( .D(N44), .CLK(clk), .RSTB(n7), .Q(
        layer2_out_flat[26]) );
  DFFARX1_RVT \layer2[1].acc_reg[11]  ( .D(N45), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[27]) );
  DFFARX1_RVT \layer2[1].acc_reg[12]  ( .D(N46), .CLK(clk), .RSTB(n8), .Q(
        layer2_out_flat[28]) );
  DFFARX1_RVT \layer2[1].acc_reg[13]  ( .D(N47), .CLK(clk), .RSTB(n7), .Q(
        layer2_out_flat[29]) );
  DFFARX1_RVT \layer2[1].acc_reg[14]  ( .D(N48), .CLK(clk), .RSTB(n6), .Q(
        layer2_out_flat[30]) );
  DFFARX1_RVT \layer2[1].acc_reg[15]  ( .D(N49), .CLK(clk), .RSTB(n8), .Q(
        layer2_out_flat[31]) );
  DFFARX1_RVT \layer2[1].acc_reg[16]  ( .D(N50), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[16] ) );
  DFFARX1_RVT \layer2[1].acc_reg[17]  ( .D(N51), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[17] ) );
  DFFARX1_RVT \layer2[1].acc_reg[18]  ( .D(N52), .CLK(clk), .RSTB(n8), .Q(
        \layer2[1].acc[18] ) );
  DFFARX1_RVT \layer2[1].acc_reg[19]  ( .D(N53), .CLK(clk), .RSTB(n6), .Q(
        \layer2[1].acc[19] ) );
  DFFARX1_RVT \layer2[1].acc_reg[20]  ( .D(N54), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[20] ) );
  DFFARX1_RVT \layer2[1].acc_reg[21]  ( .D(N55), .CLK(clk), .RSTB(n8), .Q(
        \layer2[1].acc[21] ) );
  DFFARX1_RVT \layer2[1].acc_reg[22]  ( .D(N56), .CLK(clk), .RSTB(n6), .Q(
        \layer2[1].acc[22] ) );
  DFFARX1_RVT \layer2[1].acc_reg[23]  ( .D(N57), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[23] ) );
  DFFARX1_RVT \layer2[1].acc_reg[24]  ( .D(N58), .CLK(clk), .RSTB(n8), .Q(
        \layer2[1].acc[24] ) );
  DFFARX1_RVT \layer2[1].acc_reg[25]  ( .D(N59), .CLK(clk), .RSTB(n6), .Q(
        \layer2[1].acc[25] ) );
  DFFARX1_RVT \layer2[1].acc_reg[26]  ( .D(N60), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[26] ) );
  DFFARX1_RVT \layer2[1].acc_reg[27]  ( .D(N61), .CLK(clk), .RSTB(n8), .Q(
        \layer2[1].acc[27] ) );
  DFFARX1_RVT \layer2[1].acc_reg[28]  ( .D(N62), .CLK(clk), .RSTB(n6), .Q(
        \layer2[1].acc[28] ) );
  DFFARX1_RVT \layer2[1].acc_reg[29]  ( .D(N63), .CLK(clk), .RSTB(n7), .Q(
        \layer2[1].acc[29] ) );
  DFFARX1_RVT \layer2[1].acc_reg[30]  ( .D(N64), .CLK(clk), .RSTB(n8), .Q(
        \layer2[1].acc[30] ) );
  DFFARX1_RVT \layer2[1].acc_reg[31]  ( .D(N65), .CLK(clk), .RSTB(n6), .Q(
        \layer2[1].acc[31] ) );
  DataShift_WIDTH16 ds ( .data_in(ecg_in), .clk(clk), .rst(rst), .data_out(
        shifted_data) );
  MAC \layer1[0].mac1  ( .a(shifted_data), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1}), .clk(clk), .rst(rst), .out({
        \layer1_mac_out[0][31] , \layer1_mac_out[0][30] , 
        \layer1_mac_out[0][29] , \layer1_mac_out[0][28] , 
        \layer1_mac_out[0][27] , \layer1_mac_out[0][26] , 
        \layer1_mac_out[0][25] , \layer1_mac_out[0][24] , 
        \layer1_mac_out[0][23] , \layer1_mac_out[0][22] , 
        \layer1_mac_out[0][21] , \layer1_mac_out[0][20] , 
        \layer1_mac_out[0][19] , \layer1_mac_out[0][18] , 
        \layer1_mac_out[0][17] , \layer1_mac_out[0][16] , 
        \layer1_mac_out[0][15] , \layer1_mac_out[0][14] , 
        \layer1_mac_out[0][13] , \layer1_mac_out[0][12] , 
        \layer1_mac_out[0][11] , \layer1_mac_out[0][10] , 
        \layer1_mac_out[0][9] , \layer1_mac_out[0][8] , \layer1_mac_out[0][7] , 
        \layer1_mac_out[0][6] , \layer1_mac_out[0][5] , \layer1_mac_out[0][4] , 
        \layer1_mac_out[0][3] , \layer1_mac_out[0][2] , \layer1_mac_out[0][1] , 
        \layer1_mac_out[0][0] }) );
  Neuron_WIDTH16_3 \layer1[0].neuron1  ( .mac_out({\layer1_mac_out[0][31] , 
        \layer1_mac_out[0][30] , \layer1_mac_out[0][29] , 
        \layer1_mac_out[0][28] , \layer1_mac_out[0][27] , 
        \layer1_mac_out[0][26] , \layer1_mac_out[0][25] , 
        \layer1_mac_out[0][24] , \layer1_mac_out[0][23] , 
        \layer1_mac_out[0][22] , \layer1_mac_out[0][21] , 
        \layer1_mac_out[0][20] , \layer1_mac_out[0][19] , 
        \layer1_mac_out[0][18] , \layer1_mac_out[0][17] , 
        \layer1_mac_out[0][16] , \layer1_mac_out[0][15] , 
        \layer1_mac_out[0][14] , \layer1_mac_out[0][13] , 
        \layer1_mac_out[0][12] , \layer1_mac_out[0][11] , 
        \layer1_mac_out[0][10] , \layer1_mac_out[0][9] , 
        \layer1_mac_out[0][8] , \layer1_mac_out[0][7] , \layer1_mac_out[0][6] , 
        \layer1_mac_out[0][5] , \layer1_mac_out[0][4] , \layer1_mac_out[0][3] , 
        \layer1_mac_out[0][2] , \layer1_mac_out[0][1] , \layer1_mac_out[0][0] }) );
  MAC \layer1[1].mac1  ( .a(shifted_data), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b0}), .clk(clk), .rst(rst), .out({
        \layer1_mac_out[1][31] , \layer1_mac_out[1][30] , 
        \layer1_mac_out[1][29] , \layer1_mac_out[1][28] , 
        \layer1_mac_out[1][27] , \layer1_mac_out[1][26] , 
        \layer1_mac_out[1][25] , \layer1_mac_out[1][24] , 
        \layer1_mac_out[1][23] , \layer1_mac_out[1][22] , 
        \layer1_mac_out[1][21] , \layer1_mac_out[1][20] , 
        \layer1_mac_out[1][19] , \layer1_mac_out[1][18] , 
        \layer1_mac_out[1][17] , \layer1_mac_out[1][16] , 
        \layer1_mac_out[1][15] , \layer1_mac_out[1][14] , 
        \layer1_mac_out[1][13] , \layer1_mac_out[1][12] , 
        \layer1_mac_out[1][11] , \layer1_mac_out[1][10] , 
        \layer1_mac_out[1][9] , \layer1_mac_out[1][8] , \layer1_mac_out[1][7] , 
        \layer1_mac_out[1][6] , \layer1_mac_out[1][5] , \layer1_mac_out[1][4] , 
        \layer1_mac_out[1][3] , \layer1_mac_out[1][2] , \layer1_mac_out[1][1] , 
        \layer1_mac_out[1][0] }) );
  Neuron_WIDTH16_2 \layer1[1].neuron1  ( .mac_out({\layer1_mac_out[1][31] , 
        \layer1_mac_out[1][30] , \layer1_mac_out[1][29] , 
        \layer1_mac_out[1][28] , \layer1_mac_out[1][27] , 
        \layer1_mac_out[1][26] , \layer1_mac_out[1][25] , 
        \layer1_mac_out[1][24] , \layer1_mac_out[1][23] , 
        \layer1_mac_out[1][22] , \layer1_mac_out[1][21] , 
        \layer1_mac_out[1][20] , \layer1_mac_out[1][19] , 
        \layer1_mac_out[1][18] , \layer1_mac_out[1][17] , 
        \layer1_mac_out[1][16] , \layer1_mac_out[1][15] , 
        \layer1_mac_out[1][14] , \layer1_mac_out[1][13] , 
        \layer1_mac_out[1][12] , \layer1_mac_out[1][11] , 
        \layer1_mac_out[1][10] , \layer1_mac_out[1][9] , 
        \layer1_mac_out[1][8] , \layer1_mac_out[1][7] , \layer1_mac_out[1][6] , 
        \layer1_mac_out[1][5] , \layer1_mac_out[1][4] , \layer1_mac_out[1][3] , 
        \layer1_mac_out[1][2] , \layer1_mac_out[1][1] , \layer1_mac_out[1][0] }) );
  MAC \layer1[2].mac1  ( .a(shifted_data), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1}), .clk(clk), .rst(rst), .out({
        \layer1_mac_out[2][31] , \layer1_mac_out[2][30] , 
        \layer1_mac_out[2][29] , \layer1_mac_out[2][28] , 
        \layer1_mac_out[2][27] , \layer1_mac_out[2][26] , 
        \layer1_mac_out[2][25] , \layer1_mac_out[2][24] , 
        \layer1_mac_out[2][23] , \layer1_mac_out[2][22] , 
        \layer1_mac_out[2][21] , \layer1_mac_out[2][20] , 
        \layer1_mac_out[2][19] , \layer1_mac_out[2][18] , 
        \layer1_mac_out[2][17] , \layer1_mac_out[2][16] , 
        \layer1_mac_out[2][15] , \layer1_mac_out[2][14] , 
        \layer1_mac_out[2][13] , \layer1_mac_out[2][12] , 
        \layer1_mac_out[2][11] , \layer1_mac_out[2][10] , 
        \layer1_mac_out[2][9] , \layer1_mac_out[2][8] , \layer1_mac_out[2][7] , 
        \layer1_mac_out[2][6] , \layer1_mac_out[2][5] , \layer1_mac_out[2][4] , 
        \layer1_mac_out[2][3] , \layer1_mac_out[2][2] , \layer1_mac_out[2][1] , 
        \layer1_mac_out[2][0] }) );
  Neuron_WIDTH16_1 \layer1[2].neuron1  ( .mac_out({\layer1_mac_out[2][31] , 
        \layer1_mac_out[2][30] , \layer1_mac_out[2][29] , 
        \layer1_mac_out[2][28] , \layer1_mac_out[2][27] , 
        \layer1_mac_out[2][26] , \layer1_mac_out[2][25] , 
        \layer1_mac_out[2][24] , \layer1_mac_out[2][23] , 
        \layer1_mac_out[2][22] , \layer1_mac_out[2][21] , 
        \layer1_mac_out[2][20] , \layer1_mac_out[2][19] , 
        \layer1_mac_out[2][18] , \layer1_mac_out[2][17] , 
        \layer1_mac_out[2][16] , \layer1_mac_out[2][15] , 
        \layer1_mac_out[2][14] , \layer1_mac_out[2][13] , 
        \layer1_mac_out[2][12] , \layer1_mac_out[2][11] , 
        \layer1_mac_out[2][10] , \layer1_mac_out[2][9] , 
        \layer1_mac_out[2][8] , \layer1_mac_out[2][7] , \layer1_mac_out[2][6] , 
        \layer1_mac_out[2][5] , \layer1_mac_out[2][4] , \layer1_mac_out[2][3] , 
        \layer1_mac_out[2][2] , \layer1_mac_out[2][1] , \layer1_mac_out[2][0] }) );
  MAC \layer1[3].mac1  ( .a(shifted_data), .b({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b0, 1'b0}), .clk(clk), .rst(rst), .out({
        \layer1_mac_out[3][31] , \layer1_mac_out[3][30] , 
        \layer1_mac_out[3][29] , \layer1_mac_out[3][28] , 
        \layer1_mac_out[3][27] , \layer1_mac_out[3][26] , 
        \layer1_mac_out[3][25] , \layer1_mac_out[3][24] , 
        \layer1_mac_out[3][23] , \layer1_mac_out[3][22] , 
        \layer1_mac_out[3][21] , \layer1_mac_out[3][20] , 
        \layer1_mac_out[3][19] , \layer1_mac_out[3][18] , 
        \layer1_mac_out[3][17] , \layer1_mac_out[3][16] , 
        \layer1_mac_out[3][15] , \layer1_mac_out[3][14] , 
        \layer1_mac_out[3][13] , \layer1_mac_out[3][12] , 
        \layer1_mac_out[3][11] , \layer1_mac_out[3][10] , 
        \layer1_mac_out[3][9] , \layer1_mac_out[3][8] , \layer1_mac_out[3][7] , 
        \layer1_mac_out[3][6] , \layer1_mac_out[3][5] , \layer1_mac_out[3][4] , 
        \layer1_mac_out[3][3] , \layer1_mac_out[3][2] , \layer1_mac_out[3][1] , 
        \layer1_mac_out[3][0] }) );
  Neuron_WIDTH16_0 \layer1[3].neuron1  ( .mac_out({\layer1_mac_out[3][31] , 
        \layer1_mac_out[3][30] , \layer1_mac_out[3][29] , 
        \layer1_mac_out[3][28] , \layer1_mac_out[3][27] , 
        \layer1_mac_out[3][26] , \layer1_mac_out[3][25] , 
        \layer1_mac_out[3][24] , \layer1_mac_out[3][23] , 
        \layer1_mac_out[3][22] , \layer1_mac_out[3][21] , 
        \layer1_mac_out[3][20] , \layer1_mac_out[3][19] , 
        \layer1_mac_out[3][18] , \layer1_mac_out[3][17] , 
        \layer1_mac_out[3][16] , \layer1_mac_out[3][15] , 
        \layer1_mac_out[3][14] , \layer1_mac_out[3][13] , 
        \layer1_mac_out[3][12] , \layer1_mac_out[3][11] , 
        \layer1_mac_out[3][10] , \layer1_mac_out[3][9] , 
        \layer1_mac_out[3][8] , \layer1_mac_out[3][7] , \layer1_mac_out[3][6] , 
        \layer1_mac_out[3][5] , \layer1_mac_out[3][4] , \layer1_mac_out[3][3] , 
        \layer1_mac_out[3][2] , \layer1_mac_out[3][1] , \layer1_mac_out[3][0] }), .neuron_out({\layer1_out[3][15] , \layer1_out[3][14] , \layer1_out[3][13] , 
        \layer1_out[3][12] , \layer1_out[3][11] , \layer1_out[3][10] , 
        \layer1_out[3][9] , \layer1_out[3][8] , \layer1_out[3][7] , 
        \layer1_out[3][6] , \layer1_out[3][5] , \layer1_out[3][4] , 
        \layer1_out[3][3] , \layer1_out[3][2] , \layer1_out[3][1] , 
        \layer1_out[3][0] }) );
  DSNN_2Layer_DW01_add_0 add_76_I4_G2 ( .A({\layer2[1].acc[31] , 
        \layer2[1].acc[30] , \layer2[1].acc[29] , \layer2[1].acc[28] , 
        \layer2[1].acc[27] , \layer2[1].acc[26] , \layer2[1].acc[25] , 
        \layer2[1].acc[24] , \layer2[1].acc[23] , \layer2[1].acc[22] , 
        \layer2[1].acc[21] , \layer2[1].acc[20] , \layer2[1].acc[19] , 
        \layer2[1].acc[18] , \layer2[1].acc[17] , \layer2[1].acc[16] , 
        layer2_out_flat[31:17], 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \layer1_out[3][15] , \layer1_out[3][14] , \layer1_out[3][13] , 
        \layer1_out[3][12] , \layer1_out[3][11] , \layer1_out[3][10] , 
        \layer1_out[3][9] , \layer1_out[3][8] , \layer1_out[3][7] , 
        \layer1_out[3][6] , \layer1_out[3][5] , \layer1_out[3][4] , 
        \layer1_out[3][3] , \layer1_out[3][2] , \layer1_out[3][1] , 
        \layer1_out[3][0] , 1'b0}), .CI(1'b0), .SUM({N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        SYNOPSYS_UNCONNECTED__0}) );
  DSNN_2Layer_DW01_add_1 add_76_I4 ( .A({\layer2[0].acc[31] , 
        \layer2[0].acc[30] , \layer2[0].acc[29] , \layer2[0].acc[28] , 
        \layer2[0].acc[27] , \layer2[0].acc[26] , \layer2[0].acc[25] , 
        \layer2[0].acc[24] , \layer2[0].acc[23] , \layer2[0].acc[22] , 
        \layer2[0].acc[21] , \layer2[0].acc[20] , \layer2[0].acc[19] , 
        \layer2[0].acc[18] , \layer2[0].acc[17] , \layer2[0].acc[16] , 
        layer2_out_flat[15:0]}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \layer1_out[3][15] , \layer1_out[3][14] , \layer1_out[3][13] , 
        \layer1_out[3][12] , \layer1_out[3][11] , \layer1_out[3][10] , 
        \layer1_out[3][9] , \layer1_out[3][8] , \layer1_out[3][7] , 
        \layer1_out[3][6] , \layer1_out[3][5] , \layer1_out[3][4] , 
        \layer1_out[3][3] , \layer1_out[3][2] , \layer1_out[3][1] , 
        \layer1_out[3][0] }), .CI(1'b0), .SUM({N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}) );
  INVX1_RVT U6 ( .A(n1), .Y(n4) );
  INVX2_RVT U7 ( .A(n4), .Y(n5) );
  INVX2_RVT U8 ( .A(n4), .Y(n6) );
  INVX2_RVT U9 ( .A(n4), .Y(n7) );
  INVX2_RVT U10 ( .A(n4), .Y(n8) );
  INVX0_RVT U12 ( .A(rst), .Y(n1) );
endmodule
