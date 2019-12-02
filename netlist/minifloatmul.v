/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Mon Dec  2 11:13:50 2019
/////////////////////////////////////////////////////////////


module compute_DW01_sub_1 ( A, B, CI, DIFF, CO, IN0, IN1 );
  input [4:0] A;
  input [4:0] B;
  output [4:0] DIFF;
  input CI, IN0, IN1;
  output CO;
  wire   n176, n177, n175, n178, n179, n180, n181, n184, n185;

  DFFASX1_RVT R_164 ( .D(n184), .CLK(IN0), .SETB(IN1), .Q(DIFF[0]), .QN() );
  DFFASX1_HVT R_163 ( .D(n181), .CLK(IN0), .SETB(IN1), .Q(n176), .QN() );
  DFFASX1_HVT R_165 ( .D(n180), .CLK(IN0), .SETB(IN1), .Q(n185), .QN() );
  DFFARX1_RVT R_162_IP ( .D(A[1]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n177) );
  INVX1_RVT U28 ( .A(A[3]), .Y(n179) );
  INVX1_HVT U29 ( .A(A[0]), .Y(n184) );
  INVX1_HVT U30 ( .A(A[2]), .Y(n181) );
  OR2X1_RVT U31 ( .A1(DIFF[0]), .A2(n177), .Y(n175) );
  XOR2X2_RVT U32 ( .A1(n177), .A2(DIFF[0]), .Y(DIFF[1]) );
  AND2X1_HVT U33 ( .A1(n179), .A2(n178), .Y(DIFF[4]) );
  XOR2X1_RVT U34 ( .A1(n175), .A2(n176), .Y(DIFF[2]) );
  OR2X1_HVT U35 ( .A1(n181), .A2(n184), .Y(n180) );
  OR2X1_RVT U36 ( .A1(n185), .A2(n177), .Y(n178) );
  XNOR2X2_RVT U37 ( .A1(n179), .A2(n178), .Y(DIFF[3]) );
endmodule


module compute_DW01_add_1 ( A, B, CI, SUM, CO );
  input [4:0] A;
  input [4:0] B;
  output [4:0] SUM;
  input CI;
  output CO;
  wire   n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229;

  INVX0_RVT U42 ( .A(n225), .Y(n216) );
  INVX1_HVT U43 ( .A(B[4]), .Y(n224) );
  INVX0_RVT U44 ( .A(n228), .Y(n214) );
  OR2X1_HVT U45 ( .A1(B[0]), .A2(A[0]), .Y(n229) );
  XNOR2X2_RVT U46 ( .A1(n212), .A2(n224), .Y(SUM[4]) );
  XNOR2X1_RVT U47 ( .A1(n227), .A2(n226), .Y(SUM[2]) );
  AOI21X1_RVT U48 ( .A1(n227), .A2(n210), .A3(n216), .Y(n222) );
  NAND2X0_RVT U49 ( .A1(n210), .A2(n225), .Y(n226) );
  NAND2X0_RVT U50 ( .A1(B[2]), .A2(A[2]), .Y(n225) );
  NAND2X0_RVT U51 ( .A1(B[0]), .A2(A[0]), .Y(n228) );
  NAND2X0_HVT U52 ( .A1(B[3]), .A2(A[3]), .Y(n223) );
  OR2X1_HVT U53 ( .A1(A[1]), .A2(B[1]), .Y(n219) );
  NAND2X0_HVT U54 ( .A1(B[1]), .A2(A[1]), .Y(n220) );
  XOR2X1_RVT U55 ( .A1(n221), .A2(n222), .Y(SUM[3]) );
  NAND2X0_HVT U56 ( .A1(n217), .A2(n223), .Y(n221) );
  AND2X1_HVT U57 ( .A1(n229), .A2(n228), .Y(SUM[0]) );
  XOR2X1_HVT U58 ( .A1(n218), .A2(n228), .Y(SUM[1]) );
  NAND2X0_HVT U59 ( .A1(n219), .A2(n220), .Y(n218) );
  OR2X1_RVT U60 ( .A1(A[2]), .A2(B[2]), .Y(n210) );
  NAND2X0_RVT U61 ( .A1(n211), .A2(n220), .Y(n227) );
  NAND2X0_RVT U62 ( .A1(n219), .A2(n214), .Y(n211) );
  NAND3X0_RVT U63 ( .A1(n215), .A2(n223), .A3(n213), .Y(n212) );
  NAND3X0_RVT U64 ( .A1(n210), .A2(n217), .A3(n227), .Y(n213) );
  NAND2X0_RVT U65 ( .A1(n216), .A2(n217), .Y(n215) );
  OR2X1_RVT U66 ( .A1(A[3]), .A2(B[3]), .Y(n217) );
endmodule


module compute_DW_mult_uns_4_0 ( a, b, product, IN0, IN1 );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  input IN0, IN1;
  wire   n159, n160, n164, n192, n193, n196, n197, n198, n201, n204, n207,
         n208, n212, n213, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349;

  DFFASX1_RVT R_99 ( .D(n349), .CLK(IN0), .SETB(IN1), .Q(n208), .QN() );
  DFFASX1_RVT R_113 ( .D(n348), .CLK(IN0), .SETB(IN1), .Q(n207), .QN() );
  DFFASX1_RVT R_147 ( .D(n347), .CLK(IN0), .SETB(IN1), .Q(n212), .QN() );
  DFFARX1_RVT R_105 ( .D(n346), .CLK(IN0), .RSTB(IN1), .Q(n192), .QN() );
  DFFARX1_RVT R_114 ( .D(n344), .CLK(IN0), .RSTB(IN1), .Q(n198), .QN() );
  DFFASX1_RVT R_142 ( .D(n340), .CLK(IN0), .SETB(IN1), .Q(n213), .QN() );
  DFFARX1_RVT R_143 ( .D(n339), .CLK(IN0), .RSTB(IN1), .Q(n196), .QN() );
  DFFARX1_RVT R_148 ( .D(n338), .CLK(IN0), .RSTB(IN1), .Q(n193), .QN() );
  DFFASX1_HVT R_178 ( .D(n335), .CLK(IN0), .SETB(IN1), .Q(), .QN(product[0])
         );
  DFFARX1_HVT R_171 ( .D(n336), .CLK(IN0), .RSTB(IN1), .Q(n160), .QN() );
  DFFARX1_HVT R_107 ( .D(n345), .CLK(IN0), .RSTB(IN1), .Q(n164), .QN() );
  DFFARX1_HVT R_116 ( .D(n343), .CLK(IN0), .RSTB(IN1), .Q(n201), .QN() );
  DFFARX1_HVT R_119 ( .D(n342), .CLK(IN0), .RSTB(IN1), .Q(n204), .QN() );
  DFFARX1_HVT R_129 ( .D(n341), .CLK(IN0), .RSTB(IN1), .Q(n197), .QN() );
  DFFARX1_HVT R_170 ( .D(n337), .CLK(IN0), .RSTB(IN1), .Q(n159), .QN() );
  INVX1_HVT U97 ( .A(n322), .Y(n324) );
  INVX0_HVT U98 ( .A(n303), .Y(n284) );
  INVX0_HVT U99 ( .A(n314), .Y(n316) );
  INVX1_HVT U100 ( .A(b[1]), .Y(n329) );
  INVX1_HVT U101 ( .A(a[1]), .Y(n330) );
  INVX1_HVT U102 ( .A(b[2]), .Y(n349) );
  INVX1_HVT U103 ( .A(b[0]), .Y(n328) );
  INVX0_RVT U105 ( .A(n321), .Y(n312) );
  INVX0_RVT U106 ( .A(n331), .Y(n289) );
  INVX1_HVT U107 ( .A(b[3]), .Y(n348) );
  INVX1_HVT U108 ( .A(a[3]), .Y(n347) );
  XOR2X2_RVT U110 ( .A1(n318), .A2(n317), .Y(product[6]) );
  OAI21X2_RVT U111 ( .A1(n321), .A2(n320), .A3(n319), .Y(n326) );
  NOR2X1_RVT U112 ( .A1(n307), .A2(n306), .Y(n322) );
  FADDX1_RVT U113 ( .A(n298), .B(n297), .CI(n296), .CO(n310), .S(n306) );
  NOR2X0_HVT U114 ( .A1(n212), .A2(n207), .Y(n311) );
  NOR2X0_HVT U115 ( .A1(n213), .A2(n208), .Y(n301) );
  NOR2X0_HVT U116 ( .A1(n212), .A2(n208), .Y(n297) );
  NOR2X0_HVT U117 ( .A1(n213), .A2(n207), .Y(n298) );
  NOR2X0_HVT U118 ( .A1(n311), .A2(n310), .Y(n314) );
  NAND2X0_HVT U119 ( .A1(n311), .A2(n310), .Y(n315) );
  NAND2X0_HVT U120 ( .A1(n283), .A2(n160), .Y(n302) );
  NAND2X0_HVT U121 ( .A1(n307), .A2(n306), .Y(n323) );
  HADDX1_HVT U122 ( .A0(n196), .B0(n193), .C1(n300), .SO(n283) );
  NAND2X0_HVT U123 ( .A1(n197), .A2(n164), .Y(n287) );
  OR2X1_HVT U124 ( .A1(n327), .A2(n328), .Y(n335) );
  FADDX1_HVT U125 ( .A(n293), .B(n292), .CI(n291), .CO(n337), .S(n336) );
  NOR2X0_HVT U126 ( .A1(n330), .A2(n349), .Y(n292) );
  NOR2X0_HVT U127 ( .A1(n327), .A2(n348), .Y(n293) );
  NOR2X0_HVT U128 ( .A1(n328), .A2(n347), .Y(n338) );
  NOR2X0_HVT U129 ( .A1(n329), .A2(n340), .Y(n339) );
  AND2X1_HVT U130 ( .A1(a[2]), .A2(b[0]), .Y(n341) );
  NOR2X0_HVT U131 ( .A1(n327), .A2(n329), .Y(n342) );
  NOR2X0_HVT U132 ( .A1(n330), .A2(n328), .Y(n343) );
  NOR2X0_HVT U133 ( .A1(n330), .A2(n348), .Y(n344) );
  HADDX1_HVT U134 ( .A0(n295), .B0(n294), .C1(n291), .SO(n345) );
  NOR2X0_HVT U135 ( .A1(n330), .A2(n329), .Y(n294) );
  NOR2X0_HVT U136 ( .A1(n327), .A2(n349), .Y(n295) );
  NOR2X0_HVT U137 ( .A1(n347), .A2(n329), .Y(n346) );
  NAND2X0_HVT U138 ( .A1(n316), .A2(n315), .Y(n317) );
  AND2X1_HVT U139 ( .A1(n332), .A2(n331), .Y(product[1]) );
  OR2X1_HVT U140 ( .A1(n201), .A2(n204), .Y(n332) );
  XOR2X1_RVT U141 ( .A1(n320), .A2(n313), .Y(product[4]) );
  NAND2X0_HVT U142 ( .A1(n312), .A2(n319), .Y(n313) );
  XNOR2X1_HVT U143 ( .A1(n290), .A2(n289), .Y(product[2]) );
  NAND2X0_HVT U144 ( .A1(n288), .A2(n287), .Y(n290) );
  XOR2X1_HVT U145 ( .A1(n286), .A2(n304), .Y(product[3]) );
  NAND2X0_HVT U146 ( .A1(n284), .A2(n302), .Y(n286) );
  NAND2X0_HVT U147 ( .A1(n324), .A2(n323), .Y(n325) );
  OAI21X1_RVT U148 ( .A1(n314), .A2(n318), .A3(n315), .Y(product[7]) );
  NOR2X1_RVT U149 ( .A1(n283), .A2(n160), .Y(n303) );
  OR2X1_RVT U150 ( .A1(n197), .A2(n164), .Y(n288) );
  NAND2X0_RVT U151 ( .A1(n201), .A2(n204), .Y(n331) );
  INVX0_RVT U152 ( .A(n287), .Y(n285) );
  AOI21X1_RVT U153 ( .A1(n288), .A2(n289), .A3(n285), .Y(n304) );
  HADDX1_RVT U154 ( .A0(n198), .B0(n192), .C1(n296), .SO(n299) );
  FADDX1_RVT U155 ( .A(n301), .B(n300), .CI(n299), .CO(n307), .S(n305) );
  NOR2X1_RVT U156 ( .A1(n159), .A2(n305), .Y(n321) );
  OR2X1_RVT U157 ( .A1(n322), .A2(n321), .Y(n309) );
  OA21X1_RVT U158 ( .A1(n304), .A2(n303), .A3(n302), .Y(n320) );
  NAND2X0_RVT U159 ( .A1(n159), .A2(n305), .Y(n319) );
  OA21X1_RVT U160 ( .A1(n322), .A2(n319), .A3(n323), .Y(n308) );
  OA21X1_RVT U161 ( .A1(n309), .A2(n320), .A3(n308), .Y(n318) );
  XNOR2X2_RVT U162 ( .A1(n326), .A2(n325), .Y(product[5]) );
  INVX0_HVT U104 ( .A(a[0]), .Y(n327) );
  INVX0_HVT U109 ( .A(a[2]), .Y(n340) );
endmodule


module compute ( A, B, sign, exp, mantissa, IN0, IN1, zero );
  input [7:0] A;
  input [7:0] B;
  output [4:0] exp;
  output [7:0] mantissa;
  input IN0, IN1;
  output sign, zero;
  wire   n48, n49, n50, n51, n52, n53, n54, N6, N7, N8, N9, N10, N11, N13, N14,
         N15, N16, N17, N18, n1, zero_BAR, n9, n8, n7, n11, n10, n2, n3, n6,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n25, n26, n29, n30,
         n31, n36, n41;

  DFFARX1_HVT R_180 ( .D(n25), .CLK(IN0), .RSTB(IN1), .Q(zero_BAR), .QN(zero)
         );
  DFFARX1_HVT R_182 ( .D(A[7]), .CLK(IN0), .RSTB(IN1), .Q(n48), .QN() );
  DFFASX1_HVT R_69 ( .D(N18), .CLK(IN0), .SETB(IN1), .Q(n31), .QN() );
  DFFARX1_HVT R_72 ( .D(N17), .CLK(IN0), .RSTB(IN1), .Q(n29), .QN() );
  DFFASX1_HVT R_168 ( .D(N9), .CLK(IN0), .SETB(IN1), .Q(n26), .QN() );
  DFFARX1_HVT R_181 ( .D(B[7]), .CLK(IN0), .RSTB(IN1), .Q(n50), .QN() );
  DFFARX1_HVT R_71 ( .D(zero), .CLK(IN0), .RSTB(IN1), .Q(n30), .QN() );
  DFFARX1_HVT R_19 ( .D(B[4]), .CLK(IN0), .RSTB(IN1), .Q(n53), .QN() );
  DFFARX1_HVT R_16 ( .D(B[5]), .CLK(IN0), .RSTB(IN1), .Q(n52), .QN() );
  DFFARX1_HVT R_35 ( .D(A[6]), .CLK(IN0), .RSTB(IN1), .Q(n49), .QN() );
  DFFARX1_HVT R_189 ( .D(zero_BAR), .CLK(IN0), .RSTB(IN1), .Q(n22), .QN() );
  DFFARX1_HVT R_6 ( .D(B[6]), .CLK(IN0), .RSTB(IN1), .Q(n51), .QN() );
  INVX0_HVT U3 ( .A(B[4]), .Y(n16) );
  INVX0_HVT U4 ( .A(B[5]), .Y(n15) );
  INVX0_HVT U5 ( .A(B[3]), .Y(n14) );
  INVX0_HVT U6 ( .A(B[6]), .Y(n13) );
  INVX0_HVT U7 ( .A(A[5]), .Y(n12) );
  INVX0_HVT U8 ( .A(A[4]), .Y(n6) );
  INVX0_HVT U9 ( .A(A[6]), .Y(n3) );
  INVX0_HVT U10 ( .A(A[3]), .Y(n2) );
  OR2X1_HVT U11 ( .A1(n17), .A2(n41), .Y(n20) );
  NAND4X0_RVT U12 ( .A1(n12), .A2(n6), .A3(n3), .A4(n2), .Y(n36) );
  NAND4X0_RVT U13 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .Y(n41) );
  AND2X1_RVT U14 ( .A1(N15), .A2(zero_BAR), .Y(mantissa[4]) );
  AND2X1_RVT U15 ( .A1(N16), .A2(zero_BAR), .Y(mantissa[5]) );
  OR2X1_HVT U16 ( .A1(n30), .A2(n29), .Y(mantissa[6]) );
  OA22X1_HVT U17 ( .A1(B[7]), .A2(n20), .A3(A[7]), .A4(n19), .Y(n25) );
  OR2X1_HVT U18 ( .A1(n36), .A2(n18), .Y(n19) );
  AND2X1_HVT U19 ( .A1(n26), .A2(n22), .Y(exp[3]) );
  AND2X1_HVT U20 ( .A1(N8), .A2(zero_BAR), .Y(exp[2]) );
  AND2X1_HVT U21 ( .A1(zero_BAR), .A2(N6), .Y(exp[0]) );
  AND2X1_HVT U22 ( .A1(N7), .A2(zero_BAR), .Y(exp[1]) );
  AND2X1_HVT U23 ( .A1(n1), .A2(zero_BAR), .Y(mantissa[1]) );
  AND2X1_HVT U24 ( .A1(N13), .A2(zero_BAR), .Y(mantissa[2]) );
  AND2X1_HVT U25 ( .A1(N14), .A2(zero_BAR), .Y(mantissa[3]) );
  AND2X1_HVT U26 ( .A1(zero_BAR), .A2(N11), .Y(mantissa[0]) );
  HADDX1_HVT U27 ( .A0(n48), .B0(n50), .C1(), .SO(sign) );
  AND2X1_RVT U28 ( .A1(N10), .A2(zero_BAR), .Y(exp[4]) );
  OR3X1_HVT U29 ( .A1(B[2]), .A2(B[1]), .A3(B[0]), .Y(n17) );
  OR3X1_HVT U30 ( .A1(A[0]), .A2(A[2]), .A3(A[1]), .Y(n18) );
  AND2X1_RVT U31 ( .A1(n31), .A2(n22), .Y(mantissa[7]) );
  compute_DW01_sub_1 sub_x_4 ( .A({1'b0, n49, A[5:3]}), .B({1'b0, 1'b0, 1'b1, 
        1'b1, 1'b1}), .CI(1'b0), .DIFF({n11, n10, n9, n8, n7}), .CO(), .IN0(
        IN0), .IN1(IN1) );
  compute_DW01_add_1 add_x_5 ( .A({1'b0, n51, n52, n53, n54}), .B({n11, n10, 
        n9, n8, n7}), .CI(1'b0), .SUM({N10, N9, N8, N7, N6}), .CO() );
  compute_DW_mult_uns_4_0 mult_x_2 ( .a({n36, A[2:0]}), .b({n41, B[2:0]}), 
        .product({N18, N17, N16, N15, N14, N13, n1, N11}), .IN0(IN0), .IN1(IN1) );
  DFFASRX1_RVT R_9 ( .D(B[3]), .CLK(IN0), .RSTB(IN1), .SETB(1'b1), .Q(n54), 
        .QN() );
endmodule


module lead_detector_WIDTH6 ( in, out );
  input [5:0] in;
  output [5:0] out;
  wire   n25, n19, n20, n21, n22, n23, n24;

  INVX0_RVT U3 ( .A(n25), .Y(n19) );
  INVX0_RVT U4 ( .A(in[2]), .Y(n20) );
  INVX0_RVT U5 ( .A(in[5]), .Y(n23) );
  OR2X1_RVT U6 ( .A1(in[4]), .A2(in[5]), .Y(n25) );
  INVX1_RVT U7 ( .A(in[4]), .Y(n21) );
  NBUFFX2_RVT U8 ( .A(n25), .Y(out[2]) );
  OA21X1_RVT U9 ( .A1(in[2]), .A2(in[3]), .A3(n19), .Y(out[1]) );
  NAND3X0_RVT U10 ( .A1(n20), .A2(in[1]), .A3(n21), .Y(n24) );
  NAND2X0_RVT U11 ( .A1(n21), .A2(in[3]), .Y(n22) );
  NAND3X0_RVT U12 ( .A1(n22), .A2(n23), .A3(n24), .Y(out[0]) );
endmodule


module norm_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n225, n226, n227;

  INVX0_HVT U26 ( .A(B[1]), .Y(n225) );
  INVX1_HVT U27 ( .A(B[2]), .Y(n227) );
  XNOR2X1_RVT U28 ( .A1(n226), .A2(n227), .Y(DIFF[2]) );
  NOR2X1_RVT U29 ( .A1(n227), .A2(n226), .Y(DIFF[6]) );
  XOR2X1_RVT U30 ( .A1(n225), .A2(B[0]), .Y(DIFF[1]) );
  NAND2X0_RVT U31 ( .A1(B[0]), .A2(B[1]), .Y(n226) );
endmodule


module norm_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE, IN0, IN1
 );
  input [31:0] A;
  input [31:0] B;
  input TC, GE_LT, GE_GT_EQ, IN0, IN1;
  output GE_LT_GT_LE, EQ_NE;
  wire   n556, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078;

  DFFASX1_RVT R_151 ( .D(n556), .CLK(IN0), .SETB(IN1), .Q(n1078), .QN() );
  DFFASX1_RVT R_193 ( .D(n1075), .CLK(IN0), .SETB(IN1), .Q(n1060), .QN(n1074)
         );
  DFFASX1_RVT R_153 ( .D(n1076), .CLK(IN0), .SETB(IN1), .Q(n1077), .QN() );
  INVX0_HVT U265 ( .A(B[0]), .Y(n1061) );
  INVX0_RVT U266 ( .A(B[2]), .Y(n1066) );
  NAND2X0_RVT U269 ( .A1(n1072), .A2(n1060), .Y(n1073) );
  OAI21X2_RVT U270 ( .A1(n1069), .A2(n1068), .A3(n1067), .Y(n556) );
  AO21X1_RVT U271 ( .A1(n1078), .A2(n1060), .A3(n1077), .Y(n1072) );
  NOR2X1_RVT U272 ( .A1(n1074), .A2(n1073), .Y(GE_LT_GT_LE) );
  NAND2X0_HVT U273 ( .A1(n1061), .A2(A[0]), .Y(n1065) );
  NAND2X0_HVT U274 ( .A1(n1062), .A2(A[1]), .Y(n1063) );
  NAND2X0_HVT U275 ( .A1(n1075), .A2(A[4]), .Y(n1071) );
  NAND2X0_HVT U276 ( .A1(n1075), .A2(A[3]), .Y(n1070) );
  NOR2X1_RVT U277 ( .A1(n1066), .A2(A[2]), .Y(n1069) );
  INVX1_RVT U278 ( .A(B[1]), .Y(n1062) );
  NOR2X1_RVT U279 ( .A1(n1062), .A2(A[1]), .Y(n1064) );
  OA21X1_RVT U280 ( .A1(n1065), .A2(n1064), .A3(n1063), .Y(n1068) );
  NAND2X0_RVT U281 ( .A1(n1066), .A2(A[2]), .Y(n1067) );
  NAND2X0_HVT U282 ( .A1(n1071), .A2(n1070), .Y(n1076) );
  INVX0_HVT U267 ( .A(B[9]), .Y(n1075) );
endmodule


module norm_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n31, n89, n92, n225;

  XNOR2X2_RVT U13 ( .A1(n92), .A2(n89), .Y(DIFF[2]) );
  XOR2X2_RVT U19 ( .A1(n31), .A2(B[0]), .Y(DIFF[1]) );
  NAND2X0_RVT U20 ( .A1(B[0]), .A2(B[1]), .Y(n92) );
  INVX0_HVT U26 ( .A(B[1]), .Y(n31) );
  NOR2X0_HVT U27 ( .A1(n89), .A2(n92), .Y(DIFF[6]) );
  INVX1_HVT U28 ( .A(n225), .Y(DIFF[0]) );
  INVX1_HVT U29 ( .A(B[0]), .Y(n225) );
  INVX1_RVT U30 ( .A(B[2]), .Y(n89) );
endmodule


module norm ( exp_i, mantissa_i, exp_o, mantissa_o, IN0, IN1 );
  input [4:0] exp_i;
  input [7:0] mantissa_i;
  output [3:0] exp_o;
  output [6:0] mantissa_o;
  input IN0, IN1;
  wire   N20, N21, N25, N40, N39, N35, N34, N33, n1, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10;
  wire   [2:0] shift;

  DFFASX1_RVT R_149 ( .D(n101), .CLK(IN0), .SETB(IN1), .Q(n71), .QN() );
  DFFASX1_HVT R_191 ( .D(n98), .CLK(IN0), .SETB(IN1), .Q(n58), .QN() );
  DFFARX1_HVT R_44 ( .D(n107), .CLK(IN0), .RSTB(IN1), .Q(n85), .QN() );
  DFFASX1_HVT R_154 ( .D(mantissa_i[7]), .CLK(IN0), .SETB(IN1), .Q(n69), .QN()
         );
  DFFASX1_HVT R_2 ( .D(n112), .CLK(IN0), .SETB(IN1), .Q(), .QN(n7) );
  DFFASX1_HVT R_3 ( .D(n111), .CLK(IN0), .SETB(IN1), .Q(), .QN(n8) );
  DFFASX1_HVT R_12 ( .D(n109), .CLK(IN0), .SETB(IN1), .Q(n90), .QN() );
  DFFASX1_HVT R_13 ( .D(n108), .CLK(IN0), .SETB(IN1), .Q(n89), .QN() );
  DFFASX1_HVT R_23 ( .D(n106), .CLK(IN0), .SETB(IN1), .Q(n88), .QN() );
  DFFASX1_HVT R_25 ( .D(n117), .CLK(IN0), .SETB(IN1), .Q(n87), .QN() );
  DFFARX1_HVT R_41 ( .D(n104), .CLK(IN0), .RSTB(IN1), .Q(n86), .QN() );
  DFFARX1_HVT R_47 ( .D(n110), .CLK(IN0), .RSTB(IN1), .Q(n84), .QN() );
  DFFASX1_HVT R_88 ( .D(exp_i[3]), .CLK(IN0), .SETB(IN1), .Q(n83), .QN() );
  DFFARX1_HVT R_89 ( .D(n115), .CLK(IN0), .RSTB(IN1), .Q(n82), .QN() );
  DFFASX1_HVT R_90 ( .D(n114), .CLK(IN0), .SETB(IN1), .Q(n81), .QN() );
  DFFASX1_HVT R_95 ( .D(n97), .CLK(IN0), .SETB(IN1), .Q(n80), .QN() );
  DFFASX1_HVT R_96 ( .D(n96), .CLK(IN0), .SETB(IN1), .Q(n79), .QN() );
  DFFASX1_HVT R_97 ( .D(n95), .CLK(IN0), .SETB(IN1), .Q(n78), .QN() );
  DFFASX1_HVT R_122 ( .D(mantissa_i[6]), .CLK(IN0), .SETB(IN1), .Q(n76), .QN()
         );
  DFFARX1_HVT R_123 ( .D(n99), .CLK(IN0), .RSTB(IN1), .Q(n75), .QN() );
  DFFARX1_HVT R_150 ( .D(n100), .CLK(IN0), .RSTB(IN1), .Q(n70), .QN() );
  DFFASX1_HVT R_166 ( .D(n94), .CLK(IN0), .SETB(IN1), .Q(n68), .QN() );
  DFFARX1_HVT R_167 ( .D(n105), .CLK(IN0), .RSTB(IN1), .Q(n67), .QN() );
  DFFASX1_HVT R_172 ( .D(n103), .CLK(IN0), .SETB(IN1), .Q(n66), .QN() );
  DFFASX1_HVT R_183 ( .D(n116), .CLK(IN0), .SETB(IN1), .Q(n65), .QN(n1) );
  DFFASX1_HVT R_186 ( .D(n113), .CLK(IN0), .SETB(IN1), .Q(n62), .QN() );
  DFFASX1_HVT R_187 ( .D(n102), .CLK(IN0), .SETB(IN1), .Q(n61), .QN() );
  DFFARX1_HVT R_190 ( .D(n103), .CLK(IN0), .RSTB(IN1), .Q(n59), .QN() );
  DFFASX1_HVT R_136 ( .D(mantissa_i[1]), .CLK(IN0), .SETB(IN1), .Q(n74), .QN()
         );
  DFFARX1_HVT R_184 ( .D(mantissa_i[2]), .CLK(IN0), .RSTB(IN1), .Q(n64), .QN()
         );
  DFFARX1_HVT R_188 ( .D(mantissa_i[3]), .CLK(IN0), .RSTB(IN1), .Q(n60), .QN()
         );
  DFFARX1_HVT R_185 ( .D(mantissa_i[4]), .CLK(IN0), .RSTB(IN1), .Q(n63), .QN()
         );
  DFFARX1_HVT R_139 ( .D(mantissa_i[1]), .CLK(IN0), .RSTB(IN1), .Q(n73), .QN()
         );
  DFFASX1_HVT R_140 ( .D(mantissa_i[0]), .CLK(IN0), .SETB(IN1), .Q(n72), .QN()
         );
  XOR3X1_RVT U3 ( .A1(n47), .A2(exp_i[2]), .A3(n43), .Y(n110) );
  INVX1_RVT U4 ( .A(shift[1]), .Y(n41) );
  NAND2X0_RVT U5 ( .A1(n98), .A2(mantissa_i[3]), .Y(n97) );
  INVX0_HVT U6 ( .A(n27), .Y(n29) );
  INVX0_HVT U7 ( .A(n47), .Y(n49) );
  INVX0_HVT U8 ( .A(exp_i[2]), .Y(n48) );
  NAND3X0_RVT U9 ( .A1(n100), .A2(n31), .A3(n28), .Y(n94) );
  INVX0_HVT U11 ( .A(n55), .Y(n23) );
  INVX0_HVT U12 ( .A(n36), .Y(n18) );
  NAND4X0_RVT U13 ( .A1(n15), .A2(n80), .A3(n79), .A4(n78), .Y(n16) );
  INVX0_HVT U14 ( .A(exp_i[3]), .Y(n42) );
  OR2X1_RVT U15 ( .A1(mantissa_i[7]), .A2(mantissa_i[6]), .Y(n54) );
  INVX0_HVT U17 ( .A(exp_i[4]), .Y(n24) );
  INVX0_HVT U18 ( .A(mantissa_i[5]), .Y(n34) );
  NAND3X0_RVT U19 ( .A1(n100), .A2(n32), .A3(n31), .Y(n95) );
  INVX0_RVT U20 ( .A(n43), .Y(n44) );
  INVX1_RVT U21 ( .A(n41), .Y(n9) );
  INVX1_HVT U22 ( .A(n93), .Y(n31) );
  AND3X1_RVT U23 ( .A1(N40), .A2(n62), .A3(n84), .Y(n6) );
  NBUFFX2_RVT U24 ( .A(shift[0]), .Y(n93) );
  INVX1_HVT U25 ( .A(n54), .Y(n113) );
  NAND4X0_RVT U26 ( .A1(n22), .A2(n21), .A3(n20), .A4(n19), .Y(mantissa_o[5])
         );
  NAND3X0_RVT U30 ( .A1(n57), .A2(n87), .A3(n65), .Y(exp_o[3]) );
  AO22X1_RVT U31 ( .A1(n41), .A2(exp_i[1]), .A3(n40), .A4(n39), .Y(n47) );
  NAND3X0_RVT U32 ( .A1(N40), .A2(n62), .A3(n85), .Y(n37) );
  OR4X1_RVT U33 ( .A1(n6), .A2(n1), .A3(n7), .A4(n8), .Y(exp_o[2]) );
  AND3X1_RVT U34 ( .A1(n29), .A2(N20), .A3(n28), .Y(n30) );
  AO22X1_RVT U35 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .Y(n114) );
  NOR2X1_RVT U36 ( .A1(N20), .A2(n27), .Y(n100) );
  OR2X1_RVT U37 ( .A1(n54), .A2(N25), .Y(n27) );
  NAND2X0_RVT U38 ( .A1(n46), .A2(n50), .Y(n52) );
  NAND2X0_RVT U39 ( .A1(shift[1]), .A2(n38), .Y(n39) );
  AO21X1_RVT U40 ( .A1(n49), .A2(n48), .A3(n52), .Y(n51) );
  NAND2X0_RVT U41 ( .A1(n45), .A2(n44), .Y(n46) );
  NAND3X0_RVT U42 ( .A1(n35), .A2(n65), .A3(n88), .Y(exp_o[0]) );
  NAND4X0_RVT U43 ( .A1(n37), .A2(n65), .A3(n90), .A4(n89), .Y(exp_o[1]) );
  AND2X1_HVT U44 ( .A1(exp_i[0]), .A2(mantissa_i[7]), .Y(n36) );
  AND2X1_HVT U45 ( .A1(n36), .A2(exp_i[1]), .Y(n55) );
  NAND2X0_HVT U46 ( .A1(n68), .A2(n67), .Y(n14) );
  AND2X1_HVT U47 ( .A1(N21), .A2(mantissa_i[0]), .Y(n32) );
  NAND2X0_HVT U48 ( .A1(shift[2]), .A2(shift[1]), .Y(n50) );
  OA21X1_HVT U49 ( .A1(n9), .A2(shift[2]), .A3(n50), .Y(n43) );
  AO21X1_HVT U50 ( .A1(n25), .A2(n24), .A3(n113), .Y(n116) );
  NAND4X0_HVT U51 ( .A1(exp_i[3]), .A2(exp_i[2]), .A3(exp_i[0]), .A4(exp_i[1]), 
        .Y(n25) );
  NAND2X0_HVT U52 ( .A1(n33), .A2(mantissa_i[6]), .Y(n105) );
  NAND2X0_HVT U53 ( .A1(n34), .A2(n33), .Y(n99) );
  NAND2X0_HVT U54 ( .A1(mantissa_i[5]), .A2(mantissa_i[7]), .Y(n96) );
  INVX0_HVT U55 ( .A(n45), .Y(n53) );
  AND2X1_HVT U56 ( .A1(n42), .A2(n113), .Y(n115) );
  XOR2X1_HVT U57 ( .A1(n93), .A2(exp_i[0]), .Y(n104) );
  AOI22X1_HVT U58 ( .A1(exp_i[2]), .A2(n55), .A3(exp_i[3]), .A4(n54), .Y(n117)
         );
  NAND2X0_HVT U59 ( .A1(n36), .A2(n38), .Y(n108) );
  NAND3X0_HVT U60 ( .A1(n18), .A2(exp_i[1]), .A3(n54), .Y(n109) );
  NAND2X0_HVT U61 ( .A1(n48), .A2(n55), .Y(n111) );
  NAND3X0_HVT U62 ( .A1(exp_i[2]), .A2(n54), .A3(n23), .Y(n112) );
  AO22X1_HVT U63 ( .A1(n61), .A2(n73), .A3(n72), .A4(n59), .Y(n11) );
  AND2X1_HVT U64 ( .A1(n14), .A2(n60), .Y(n12) );
  AO22X1_HVT U65 ( .A1(n69), .A2(n63), .A3(n58), .A4(n64), .Y(n13) );
  OR2X1_HVT U66 ( .A1(n17), .A2(n16), .Y(mantissa_o[4]) );
  AO22X1_HVT U67 ( .A1(n61), .A2(n64), .A3(n74), .A4(n59), .Y(n17) );
  NAND2X0_HVT U68 ( .A1(n14), .A2(n63), .Y(n15) );
  NAND3X0_HVT U69 ( .A1(N40), .A2(n62), .A3(n86), .Y(n35) );
  NAND2X0_HVT U70 ( .A1(n71), .A2(n70), .Y(n21) );
  NAND2X0_HVT U71 ( .A1(n66), .A2(n64), .Y(n19) );
  NAND2X0_HVT U72 ( .A1(n61), .A2(n60), .Y(n20) );
  NAND2X0_HVT U73 ( .A1(n56), .A2(N40), .Y(n57) );
  MUX21X1_HVT U74 ( .A1(n83), .A2(n82), .S0(n81), .Y(n56) );
  AOI22X1_HVT U75 ( .A1(n76), .A2(n75), .A3(n58), .A4(n63), .Y(n22) );
  MUX21X1_RVT U76 ( .A1(mantissa_i[5]), .A2(mantissa_i[1]), .S0(N21), .Y(n10)
         );
  MUX21X1_RVT U77 ( .A1(n10), .A2(n32), .S0(n93), .Y(n101) );
  OR3X1_HVT U78 ( .A1(n13), .A2(n12), .A3(n11), .Y(mantissa_o[3]) );
  INVX1_RVT U79 ( .A(N21), .Y(n28) );
  AND2X1_RVT U80 ( .A1(n28), .A2(n93), .Y(n26) );
  AND2X1_RVT U81 ( .A1(n100), .A2(n26), .Y(n98) );
  AND2X1_RVT U82 ( .A1(n30), .A2(n31), .Y(n102) );
  AND2X1_RVT U83 ( .A1(n30), .A2(n93), .Y(n103) );
  INVX1_RVT U84 ( .A(exp_i[1]), .Y(n38) );
  AND2X1_RVT U85 ( .A1(n93), .A2(exp_i[0]), .Y(n40) );
  XOR3X2_RVT U86 ( .A1(n9), .A2(n38), .A3(n40), .Y(n107) );
  NAND2X0_RVT U87 ( .A1(n47), .A2(exp_i[2]), .Y(n45) );
  lead_detector_WIDTH6 l1 ( .in({mantissa_i[5:1], 1'b0}), .out({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        shift}) );
  norm_DW01_sub_2 sub_x_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0}), 
        .B({1'b0, 1'b0, 1'b0, 1'b0, shift[2:1], n93}), .CI(1'b0), .DIFF({N25, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        N21, N20, SYNOPSYS_UNCONNECTED_7}), .CO() );
  norm_DW_cmp_1 gt_x_6 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, exp_i}), .B({N39, N39, N39, 
        N39, N39, N39, N39, N39, N39, N39, N39, N39, N39, N39, N39, N39, N39, 
        N39, N39, N39, N39, N39, N39, N39, N39, N39, 1'b0, 1'b0, 1'b0, N35, 
        N34, N33}), .TC(1'b0), .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N40), .EQ_NE(), .IN0(IN0), .IN1(IN1) );
  norm_DW01_sub_0 sub_x_5 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0}), 
        .B({1'b0, 1'b0, 1'b0, 1'b0, shift[2], n9, n93}), .CI(1'b0), .DIFF({N39, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, N35, N34, N33}), .CO() );
  INVX0_HVT U10 ( .A(mantissa_i[7]), .Y(n33) );
  MUX21X1_HVT U16 ( .A1(n33), .A2(n105), .S0(exp_i[0]), .Y(n106) );
endmodule


module valid ( exp, zero, overflow, underflow );
  input [3:0] exp;
  input zero;
  output overflow, underflow;
  wire   n3;

  AND4X1_RVT U1 ( .A1(exp[3]), .A2(exp[2]), .A3(exp[1]), .A4(exp[0]), .Y(
        overflow) );
  NOR3X0_RVT U2 ( .A1(exp[3]), .A2(exp[2]), .A3(n3), .Y(underflow) );
  OR3X1_HVT U3 ( .A1(zero), .A2(exp[1]), .A3(exp[0]), .Y(n3) );
endmodule


module fpmul ( A, B, clk, rst_n, Product, overflow, underflow );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Product;
  input clk, rst_n;
  output overflow, underflow;
  wire   p2_sign, p2_zero, c_sign, c_zero, p3_sign, p3_zero, overflow_ur,
         underflow_ur, n41, n58, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [4:0] p2_exp;
  wire   [4:0] p2_mantissa;
  wire   [4:0] c_exp;
  wire   [7:0] c_mantissa;
  wire   [3:0] n_exp;
  wire   [5:3] n_mantissa;

  DFFARX1_HVT p2_sign_reg ( .D(c_sign), .CLK(clk), .RSTB(rst_n), .Q(p2_sign), 
        .QN() );
  DFFARX1_RVT p2_exp_reg_4_ ( .D(c_exp[4]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[4]), .QN() );
  DFFARX1_HVT p2_mantissa_reg_0_ ( .D(c_mantissa[0]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[0]), .QN() );
  DFFARX1_HVT p3_sign_reg ( .D(p2_sign), .CLK(clk), .RSTB(rst_n), .Q(p3_sign), 
        .QN() );
  DFFARX1_RVT p2_mantissa_reg_5_ ( .D(c_mantissa[5]), .CLK(clk), .RSTB(rst_n), 
        .Q(n41), .QN() );
  DFFARX1_RVT p2_mantissa_reg_3_ ( .D(c_mantissa[3]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[3]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_2_ ( .D(c_mantissa[2]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[2]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_4_ ( .D(c_mantissa[4]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[4]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_1_ ( .D(c_mantissa[1]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[1]), .QN() );
  DFFARX1_HVT p2_exp_reg_2_ ( .D(c_exp[2]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[2]), .QN() );
  DFFASRX1_HVT p3_zero_reg ( .D(p2_zero), .CLK(clk), .RSTB(1'b1), .SETB(rst_n), 
        .Q(p3_zero), .QN() );
  DFFARX1_HVT Product_reg_0_ ( .D(n_mantissa[3]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[0]), .QN() );
  DFFARX1_HVT p2_exp_reg_1_ ( .D(c_exp[1]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[1]), .QN() );
  DFFARX1_HVT p2_exp_reg_0_ ( .D(c_exp[0]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[0]), .QN() );
  DFFARX1_HVT Product_reg_6_ ( .D(n_exp[3]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[6]), .QN() );
  DFFARX1_HVT underflow_reg ( .D(underflow_ur), .CLK(clk), .RSTB(rst_n), .Q(
        underflow), .QN() );
  DFFARX1_HVT overflow_reg ( .D(overflow_ur), .CLK(clk), .RSTB(rst_n), .Q(
        overflow), .QN() );
  DFFARX1_HVT Product_reg_2_ ( .D(n_mantissa[5]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[2]), .QN() );
  DFFARX1_HVT Product_reg_5_ ( .D(n_exp[2]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[5]), .QN() );
  DFFARX1_HVT Product_reg_4_ ( .D(n58), .CLK(clk), .RSTB(rst_n), .Q(Product[4]), .QN() );
  DFFARX1_HVT Product_reg_3_ ( .D(n_exp[0]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[3]), .QN() );
  DFFARX1_HVT Product_reg_1_ ( .D(n_mantissa[4]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[1]), .QN() );
  DFFARX1_HVT Product_reg_7_ ( .D(p3_sign), .CLK(clk), .RSTB(rst_n), .Q(
        Product[7]), .QN() );
  NBUFFX2_RVT U30 ( .A(n_exp[1]), .Y(n58) );
  compute C1 ( .A(A), .B(B), .sign(c_sign), .exp(c_exp), .mantissa(c_mantissa), 
        .IN0(clk), .IN1(rst_n), .zero(c_zero) );
  norm N1 ( .exp_i({p2_exp[4], c_exp[3], p2_exp[2:0]}), .mantissa_i({
        c_mantissa[7:6], n41, p2_mantissa}), .exp_o(n_exp), .mantissa_o({
        SYNOPSYS_UNCONNECTED_1, n_mantissa, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .IN0(clk), .IN1(
        rst_n) );
  valid V1 ( .exp({n_exp[3:2], n58, n_exp[0]}), .zero(p3_zero), .overflow(
        overflow_ur), .underflow(underflow_ur) );
  DFFASRX1_HVT p2_zero_reg ( .D(c_zero), .CLK(clk), .RSTB(1'b1), .SETB(rst_n), 
        .Q(p2_zero), .QN() );
endmodule

