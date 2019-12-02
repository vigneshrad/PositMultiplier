/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Sun Dec  1 22:27:27 2019
/////////////////////////////////////////////////////////////


module lead_detector_1 ( in, out );
  input [6:0] in;
  output [2:0] out;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  AO21X1_RVT U3 ( .A1(n23), .A2(n22), .A3(in[5]), .Y(out[0]) );
  OR2X1_RVT U9 ( .A1(in[3]), .A2(in[4]), .Y(n27) );
  AO21X1_RVT U10 ( .A1(n19), .A2(in[1]), .A3(in[3]), .Y(n23) );
  AND3X1_RVT U11 ( .A1(n28), .A2(n21), .A3(n20), .Y(out[2]) );
  OA21X1_RVT U13 ( .A1(n27), .A2(n26), .A3(n28), .Y(out[1]) );
  AND3X1_RVT U15 ( .A1(n25), .A2(n24), .A3(in[0]), .Y(n26) );
  INVX1_HVT U14 ( .A(in[4]), .Y(n22) );
  INVX1_RVT U4 ( .A(in[1]), .Y(n25) );
  INVX1_RVT U5 ( .A(n27), .Y(n20) );
  INVX1_RVT U6 ( .A(in[2]), .Y(n24) );
  INVX1_RVT U7 ( .A(in[2]), .Y(n19) );
  INVX1_RVT U8 ( .A(in[5]), .Y(n28) );
  OR3X1_RVT U12 ( .A1(in[2]), .A2(in[1]), .A3(in[0]), .Y(n21) );
endmodule


module decodePosit_0_DW01_add_J1_0_1 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257;

  HADDX1_RVT U58 ( .A0(A[5]), .B0(n253), .C1(), .SO(SUM[5]) );
  INVX0_RVT U60 ( .A(n255), .Y(n251) );
  INVX1_RVT U62 ( .A(A[6]), .Y(n250) );
  XOR2X2_RVT U63 ( .A1(n247), .A2(n250), .Y(SUM[6]) );
  NAND4X0_RVT U64 ( .A1(A[5]), .A2(A[4]), .A3(n249), .A4(A[3]), .Y(n247) );
  AND3X1_RVT U65 ( .A1(n248), .A2(B[0]), .A3(A[0]), .Y(n249) );
  AND2X1_RVT U66 ( .A1(A[1]), .A2(A[2]), .Y(n248) );
  HADDX1_RVT U67 ( .A0(n252), .B0(A[4]), .C1(), .SO(SUM[4]) );
  AND3X1_RVT U68 ( .A1(n249), .A2(A[3]), .A3(A[4]), .Y(n253) );
  AND2X1_RVT U69 ( .A1(n249), .A2(A[3]), .Y(n252) );
  XOR2X2_RVT U70 ( .A1(n254), .A2(A[2]), .Y(SUM[2]) );
  NAND2X0_RVT U71 ( .A1(A[0]), .A2(B[0]), .Y(n255) );
  HADDX1_RVT U72 ( .A0(n251), .B0(A[1]), .C1(), .SO(SUM[1]) );
  AND3X1_RVT U73 ( .A1(A[0]), .A2(B[0]), .A3(A[1]), .Y(n254) );
  OA21X1_RVT U74 ( .A1(A[0]), .A2(B[0]), .A3(n255), .Y(SUM[0]) );
  AO22X1_RVT U75 ( .A1(n249), .A2(n257), .A3(A[3]), .A4(n256), .Y(SUM[3]) );
  INVX0_HVT U61 ( .A(A[3]), .Y(n257) );
  INVX0_HVT U59 ( .A(n249), .Y(n256) );
endmodule


module decodePosit_1 ( in, sign, regime, exp, frac, z, inf, IN0, IN1 );
  input [7:0] in;
  output [3:0] regime;
  output [1:0] exp;
  output [3:0] frac;
  input IN0, IN1;
  output sign, z, inf;
  wire   n79, N2, N3, N4, N5, N8, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38, n39, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56,
         n57, n59, n60, n61, n62, n63, n64, n66, n67, n68, n70, n72, n76, n77,
         n78, n80, n81;
  wire   [6:0] twos;
  wire   [5:0] inv;
  wire   [2:0] zc;

  DFFARX1_RVT R_181 ( .D(n72), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n22) );
  DFFARX1_RVT R_204 ( .D(n70), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n17) );
  DFFARX1_RVT R_217 ( .D(n68), .CLK(IN0), .RSTB(IN1), .Q(N8), .QN() );
  DFFARX1_RVT R_246 ( .D(in[7]), .CLK(IN0), .RSTB(IN1), .Q(sign), .QN(n24) );
  DFFASX1_RVT R_247 ( .D(n67), .CLK(IN0), .SETB(IN1), .Q(n78), .QN(n20) );
  DFFARX1_RVT R_280 ( .D(in[6]), .CLK(IN0), .RSTB(IN1), .Q(n79), .QN() );
  DFFARX1_HVT R_218_IP ( .D(in[0]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n76) );
  DFFARX1_HVT R_279 ( .D(n66), .CLK(IN0), .RSTB(IN1), .Q(n77), .QN() );
  INVX0_HVT U7 ( .A(n49), .Y(frac[3]) );
  INVX0_HVT U9 ( .A(in[7]), .Y(n67) );
  NAND3X0_RVT U10 ( .A1(n11), .A2(n16), .A3(n62), .Y(n63) );
  AO21X1_RVT U11 ( .A1(n11), .A2(n62), .A3(n16), .Y(n64) );
  NAND3X0_RVT U12 ( .A1(n62), .A2(n81), .A3(twos[4]), .Y(n6) );
  INVX1_RVT U13 ( .A(n31), .Y(n1) );
  NBUFFX2_RVT U14 ( .A(twos[6]), .Y(n16) );
  AND2X1_HVT U15 ( .A1(sign), .A2(n49), .Y(inf) );
  INVX1_RVT U17 ( .A(n22), .Y(n23) );
  INVX1_RVT U18 ( .A(n24), .Y(n25) );
  INVX0_HVT U19 ( .A(in[5]), .Y(n45) );
  INVX0_HVT U20 ( .A(in[4]), .Y(n46) );
  INVX0_HVT U21 ( .A(in[3]), .Y(n47) );
  NAND2X0_RVT U23 ( .A1(n2), .A2(twos[1]), .Y(n57) );
  AO22X1_RVT U24 ( .A1(n2), .A2(twos[0]), .A3(n54), .A4(n52), .Y(frac[1]) );
  AND2X1_RVT U25 ( .A1(n38), .A2(n3), .Y(n2) );
  AND2X1_RVT U26 ( .A1(n31), .A2(n62), .Y(n3) );
  AND2X1_RVT U27 ( .A1(n31), .A2(n30), .Y(n11) );
  NAND2X0_RVT U28 ( .A1(n12), .A2(n13), .Y(n35) );
  NAND4X0_RVT U29 ( .A1(n10), .A2(n9), .A3(n8), .A4(n4), .Y(exp[1]) );
  NAND2X0_RVT U30 ( .A1(n5), .A2(n38), .Y(n4) );
  NAND2X0_RVT U31 ( .A1(n7), .A2(n6), .Y(n5) );
  NAND2X0_RVT U32 ( .A1(n36), .A2(n31), .Y(n7) );
  NAND3X0_RVT U33 ( .A1(n44), .A2(twos[2]), .A3(n81), .Y(n8) );
  OR2X1_RVT U34 ( .A1(n1), .A2(n12), .Y(n9) );
  OA22X1_RVT U35 ( .A1(n1), .A2(n13), .A3(n39), .A4(n31), .Y(n10) );
  NAND4X0_RVT U36 ( .A1(n31), .A2(n15), .A3(n30), .A4(twos[1]), .Y(n13) );
  NAND3X0_RVT U37 ( .A1(n53), .A2(n14), .A3(twos[1]), .Y(n12) );
  AND2X1_RVT U38 ( .A1(n62), .A2(zc[0]), .Y(n53) );
  XOR2X2_RVT U39 ( .A1(zc[0]), .A2(zc[1]), .Y(n38) );
  NAND2X0_RVT U40 ( .A1(n29), .A2(n28), .Y(n44) );
  XOR2X1_RVT U41 ( .A1(twos[6]), .A2(twos[0]), .Y(inv[0]) );
  INVX1_RVT U45 ( .A(n17), .Y(n18) );
  INVX1_RVT U46 ( .A(n20), .Y(n21) );
  XNOR2X2_RVT U47 ( .A1(twos[6]), .A2(n19), .Y(inv[2]) );
  XNOR2X2_RVT U48 ( .A1(in[4]), .A2(n78), .Y(N4) );
  AND2X1_HVT U50 ( .A1(n49), .A2(n78), .Y(z) );
  INVX1_RVT U51 ( .A(zc[0]), .Y(n31) );
  XNOR2X1_HVT U52 ( .A1(n43), .A2(in[7]), .Y(n68) );
  XOR2X1_HVT U53 ( .A1(in[2]), .A2(in[7]), .Y(n70) );
  XOR2X1_HVT U54 ( .A1(in[1]), .A2(in[7]), .Y(n72) );
  INVX1_RVT U55 ( .A(zc[1]), .Y(n30) );
  NAND3X0_RVT U56 ( .A1(n42), .A2(n27), .A3(n26), .Y(exp[0]) );
  NAND2X0_RVT U57 ( .A1(n32), .A2(n38), .Y(n26) );
  NAND2X0_RVT U58 ( .A1(n35), .A2(n1), .Y(n27) );
  INVX2_RVT U59 ( .A(zc[2]), .Y(n62) );
  NAND3X0_RVT U60 ( .A1(n62), .A2(n81), .A3(n14), .Y(n28) );
  NAND3X0_RVT U61 ( .A1(n31), .A2(n15), .A3(n30), .Y(n29) );
  AND2X1_RVT U62 ( .A1(n62), .A2(twos[3]), .Y(n36) );
  NAND3X0_RVT U63 ( .A1(n1), .A2(twos[3]), .A3(n62), .Y(n34) );
  NAND2X0_RVT U64 ( .A1(n34), .A2(n33), .Y(n32) );
  NAND3X0_RVT U65 ( .A1(n31), .A2(n62), .A3(twos[2]), .Y(n33) );
  AND2X1_RVT U66 ( .A1(n38), .A2(n62), .Y(n54) );
  NAND2X0_RVT U67 ( .A1(n51), .A2(n15), .Y(n39) );
  AND2X1_RVT U68 ( .A1(n44), .A2(twos[0]), .Y(n41) );
  NAND2X0_RVT U69 ( .A1(n41), .A2(n31), .Y(n42) );
  XOR2X2_RVT U70 ( .A1(regime[0]), .A2(n14), .Y(regime[1]) );
  OR3X1_HVT U71 ( .A1(in[6]), .A2(in[1]), .A3(in[2]), .Y(n66) );
  AND2X1_RVT U72 ( .A1(n30), .A2(twos[0]), .Y(n51) );
  XOR2X2_RVT U73 ( .A1(n16), .A2(twos[5]), .Y(inv[5]) );
  XOR2X2_RVT U74 ( .A1(twos[6]), .A2(twos[1]), .Y(inv[1]) );
  XOR2X2_RVT U75 ( .A1(twos[6]), .A2(twos[3]), .Y(inv[3]) );
  XOR2X2_RVT U76 ( .A1(twos[6]), .A2(twos[4]), .Y(inv[4]) );
  XOR2X2_RVT U77 ( .A1(n79), .A2(sign), .Y(N2) );
  XOR2X2_RVT U78 ( .A1(in[5]), .A2(sign), .Y(N3) );
  XNOR2X2_RVT U79 ( .A1(in[3]), .A2(n21), .Y(N5) );
  AND2X1_RVT U80 ( .A1(n53), .A2(n51), .Y(frac[0]) );
  AND2X1_RVT U81 ( .A1(n81), .A2(twos[1]), .Y(n52) );
  NAND3X0_RVT U82 ( .A1(n53), .A2(n14), .A3(twos[0]), .Y(n56) );
  NAND3X0_RVT U83 ( .A1(n54), .A2(n1), .A3(twos[2]), .Y(n55) );
  NAND3X0_RVT U84 ( .A1(n57), .A2(n56), .A3(n55), .Y(frac[2]) );
  NAND2X0_RVT U85 ( .A1(n15), .A2(n80), .Y(n60) );
  NAND2X0_RVT U86 ( .A1(n61), .A2(n63), .Y(regime[2]) );
  NAND2X0_RVT U87 ( .A1(n64), .A2(n63), .Y(regime[3]) );
  lead_detector_1 l1 ( .in({1'b0, inv}), .out(zc) );
  decodePosit_0_DW01_add_J1_0_1 add_x_1 ( .A({N2, N3, N4, N5, n18, n23, N8}), 
        .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n25}), .CI(1'b0), .SUM(twos), 
        .CO() );
  INVX0_HVT U22 ( .A(in[0]), .Y(n43) );
  NOR2X1_HVT U49 ( .A1(n77), .A2(n48), .Y(n49) );
  INVX1_HVT U8 ( .A(twos[2]), .Y(n19) );
  MUX21X1_RVT U5 ( .A1(n59), .A2(n60), .S0(n11), .Y(n61) );
  XNOR2X1_RVT U3 ( .A1(n15), .A2(n80), .Y(n59) );
  NBUFFX2_RVT U4 ( .A(zc[0]), .Y(n81) );
  NBUFFX2_RVT U6 ( .A(zc[2]), .Y(n15) );
  NBUFFX2_RVT U16 ( .A(zc[1]), .Y(n14) );
  INVX1_HVT U42 ( .A(n16), .Y(n80) );
  NAND4X0_HVT U43 ( .A1(n76), .A2(n47), .A3(n46), .A4(n45), .Y(n48) );
  XNOR2X2_RVT U44 ( .A1(n81), .A2(n80), .Y(regime[0]) );
endmodule


module lead_detector_0 ( in, out );
  input [6:0] in;
  output [2:0] out;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27;

  AO21X1_RVT U3 ( .A1(n20), .A2(n19), .A3(in[5]), .Y(out[0]) );
  AND3X1_RVT U4 ( .A1(n22), .A2(n21), .A3(in[0]), .Y(n23) );
  OA21X1_RVT U5 ( .A1(n24), .A2(n23), .A3(n25), .Y(out[1]) );
  AO21X1_RVT U6 ( .A1(n21), .A2(in[1]), .A3(in[3]), .Y(n20) );
  OR2X1_RVT U9 ( .A1(in[3]), .A2(in[4]), .Y(n24) );
  AND3X1_RVT U14 ( .A1(n27), .A2(n26), .A3(n25), .Y(out[2]) );
  INVX1_RVT U7 ( .A(in[2]), .Y(n21) );
  INVX0_RVT U10 ( .A(in[1]), .Y(n22) );
  INVX0_RVT U12 ( .A(n24), .Y(n27) );
  INVX1_RVT U8 ( .A(in[5]), .Y(n25) );
  INVX1_HVT U11 ( .A(in[4]), .Y(n19) );
  OR3X1_RVT U13 ( .A1(in[2]), .A2(in[1]), .A3(in[0]), .Y(n26) );
endmodule


module decodePosit_0_DW01_add_J1_0_0 ( A, B, CI, SUM, CO, IN0, IN1 );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI, IN0, IN1;
  output CO;
  wire   n274, n273, n272, n271, n245, n248, n249, n250, n251, n252, n253,
         n255, n256, n257, n258, n259, n260, n261, n262, n269, n270;

  DFFARX1_RVT R_265 ( .D(n269), .CLK(IN0), .RSTB(IN1), .Q(n270), .QN() );
  DFFARX1_RVT R_266 ( .D(A[0]), .CLK(IN0), .RSTB(IN1), .Q(n273), .QN() );
  DFFARX1_RVT R_267 ( .D(B[0]), .CLK(IN0), .RSTB(IN1), .Q(n274), .QN() );
  DFFARX1_RVT R_269 ( .D(A[1]), .CLK(IN0), .RSTB(IN1), .Q(n272), .QN() );
  DFFASX1_RVT R_268_IP ( .D(n262), .CLK(IN0), .SETB(IN1), .Q(), .QN(n271) );
  AND2X1_RVT U59 ( .A1(A[5]), .A2(n270), .Y(n245) );
  NAND3X0_RVT U60 ( .A1(A[4]), .A2(n270), .A3(A[5]), .Y(n253) );
  INVX0_RVT U62 ( .A(n260), .Y(n256) );
  AND2X1_RVT U63 ( .A1(A[4]), .A2(n270), .Y(n255) );
  AND4X1_RVT U64 ( .A1(A[0]), .A2(B[0]), .A3(A[2]), .A4(A[1]), .Y(n269) );
  INVX1_RVT U66 ( .A(A[3]), .Y(n249) );
  NAND2X0_RVT U68 ( .A1(n249), .A2(A[6]), .Y(n248) );
  NAND4X0_RVT U69 ( .A1(n245), .A2(n251), .A3(A[3]), .A4(A[4]), .Y(n250) );
  NAND2X0_RVT U71 ( .A1(n253), .A2(A[6]), .Y(n252) );
  AND2X1_RVT U72 ( .A1(n255), .A2(A[3]), .Y(n258) );
  HADDX1_RVT U73 ( .A0(A[5]), .B0(n258), .C1(), .SO(SUM[5]) );
  NAND2X0_RVT U74 ( .A1(n273), .A2(n274), .Y(n260) );
  AND2X1_RVT U76 ( .A1(A[3]), .A2(n270), .Y(n257) );
  HADDX1_RVT U77 ( .A0(n257), .B0(A[4]), .C1(), .SO(SUM[4]) );
  AND3X1_RVT U78 ( .A1(n273), .A2(n274), .A3(n272), .Y(n259) );
  HADDX1_RVT U79 ( .A0(n259), .B0(n271), .C1(), .SO(SUM[2]) );
  OA21X1_RVT U80 ( .A1(n273), .A2(n274), .A3(n260), .Y(SUM[0]) );
  NAND4X0_RVT U81 ( .A1(n273), .A2(n274), .A3(n271), .A4(n272), .Y(n261) );
  AO22X1_RVT U82 ( .A1(n270), .A2(n249), .A3(n261), .A4(A[3]), .Y(SUM[3]) );
  INVX0_HVT U61 ( .A(A[2]), .Y(n262) );
  NAND3X2_RVT U67 ( .A1(n250), .A2(n252), .A3(n248), .Y(SUM[6]) );
  XOR2X1_RVT U75 ( .A1(n256), .A2(n272), .Y(SUM[1]) );
  INVX1_RVT U58 ( .A(A[6]), .Y(n251) );
endmodule


module decodePosit_0 ( in, sign, regime, exp, frac, z, inf, IN0, IN1 );
  input [7:0] in;
  output [3:0] regime;
  output [1:0] exp;
  output [3:0] frac;
  input IN0, IN1;
  output sign, z, inf;
  wire   N2, N3, N4, N5, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n59, n61, n63, n69, n70, n72, n73, n74, n75;
  wire   [5:0] twos;
  wire   [5:0] inv;
  wire   [2:0] zc;

  DFFARX1_RVT R_282 ( .D(in[6]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n74) );
  DFFARX1_HVT R_223 ( .D(in[0]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n57) );
  DFFARX1_HVT R_281 ( .D(n59), .CLK(IN0), .RSTB(IN1), .Q(n70), .QN() );
  NAND3X0_RVT U3 ( .A1(n43), .A2(n1), .A3(twos[0]), .Y(n46) );
  INVX1_RVT U4 ( .A(zc[0]), .Y(n28) );
  NBUFFX2_RVT U5 ( .A(zc[1]), .Y(n1) );
  AND2X1_HVT U7 ( .A1(n38), .A2(sign), .Y(inf) );
  INVX0_HVT U10 ( .A(in[4]), .Y(n35) );
  NAND3X0_RVT U11 ( .A1(n43), .A2(twos[2]), .A3(n1), .Y(n23) );
  INVX1_RVT U12 ( .A(n28), .Y(n5) );
  NOR2X0_HVT U13 ( .A1(sign), .A2(frac[3]), .Y(z) );
  INVX0_HVT U14 ( .A(frac[3]), .Y(n38) );
  INVX0_HVT U16 ( .A(in[3]), .Y(n36) );
  XNOR2X2_RVT U18 ( .A1(n72), .A2(n2), .Y(inv[2]) );
  AND2X1_RVT U19 ( .A1(n25), .A2(n22), .Y(n3) );
  AOI22X1_RVT U21 ( .A1(n43), .A2(n1), .A3(n54), .A4(n4), .Y(n6) );
  OR2X1_RVT U23 ( .A1(n7), .A2(n6), .Y(n29) );
  NAND2X0_RVT U24 ( .A1(twos[0]), .A2(n28), .Y(n7) );
  NAND2X0_RVT U26 ( .A1(n8), .A2(n3), .Y(n30) );
  AND2X1_RVT U27 ( .A1(n28), .A2(twos[2]), .Y(n8) );
  XOR2X1_HVT U28 ( .A1(in[7]), .A2(in[2]), .Y(n63) );
  XOR2X1_HVT U29 ( .A1(in[7]), .A2(in[1]), .Y(n69) );
  XOR2X1_HVT U30 ( .A1(in[7]), .A2(in[0]), .Y(n61) );
  OR2X1_HVT U31 ( .A1(n70), .A2(n37), .Y(frac[3]) );
  NAND2X0_RVT U32 ( .A1(twos[1]), .A2(zc[2]), .Y(n9) );
  NAND3X0_RVT U35 ( .A1(n21), .A2(n20), .A3(n19), .Y(n13) );
  AND2X1_RVT U36 ( .A1(n44), .A2(n28), .Y(n42) );
  AND2X1_RVT U37 ( .A1(n25), .A2(n22), .Y(n44) );
  AND2X1_RVT U38 ( .A1(zc[0]), .A2(zc[1]), .Y(n14) );
  OA21X1_RVT U39 ( .A1(zc[1]), .A2(zc[0]), .A3(n53), .Y(n25) );
  NAND3X0_RVT U40 ( .A1(n18), .A2(n16), .A3(n15), .Y(exp[1]) );
  AO21X1_RVT U41 ( .A1(n24), .A2(n23), .A3(n28), .Y(n15) );
  OA22X1_RVT U42 ( .A1(n26), .A2(n28), .A3(n17), .A4(n14), .Y(n16) );
  NAND3X0_RVT U43 ( .A1(twos[4]), .A2(n5), .A3(n25), .Y(n17) );
  NAND2X0_RVT U44 ( .A1(n13), .A2(n28), .Y(n18) );
  NAND3X0_RVT U45 ( .A1(n21), .A2(n20), .A3(n19), .Y(n33) );
  NAND3X0_RVT U46 ( .A1(n43), .A2(twos[1]), .A3(n1), .Y(n19) );
  OR2X1_RVT U47 ( .A1(n49), .A2(n9), .Y(n20) );
  NAND3X0_RVT U48 ( .A1(n25), .A2(n22), .A3(twos[3]), .Y(n21) );
  NAND3X0_RVT U49 ( .A1(n54), .A2(twos[2]), .A3(n4), .Y(n24) );
  AND2X1_RVT U50 ( .A1(n53), .A2(zc[0]), .Y(n43) );
  NAND2X0_RVT U51 ( .A1(n40), .A2(n4), .Y(n26) );
  XOR2X1_RVT U54 ( .A1(regime[0]), .A2(n1), .Y(regime[1]) );
  NAND2X0_RVT U55 ( .A1(n33), .A2(n5), .Y(n31) );
  NAND3X0_RVT U56 ( .A1(n31), .A2(n29), .A3(n30), .Y(exp[0]) );
  XOR2X1_RVT U57 ( .A1(zc[0]), .A2(n12), .Y(regime[0]) );
  OR3X1_HVT U59 ( .A1(in[6]), .A2(in[2]), .A3(in[1]), .Y(n59) );
  INVX0_RVT U60 ( .A(zc[1]), .Y(n32) );
  AND2X1_RVT U61 ( .A1(n32), .A2(twos[0]), .Y(n40) );
  XOR2X2_RVT U62 ( .A1(n12), .A2(twos[5]), .Y(inv[5]) );
  XOR2X2_RVT U63 ( .A1(n72), .A2(twos[1]), .Y(inv[1]) );
  XOR2X2_RVT U64 ( .A1(n72), .A2(twos[3]), .Y(inv[3]) );
  XOR2X2_RVT U65 ( .A1(n72), .A2(twos[4]), .Y(inv[4]) );
  XOR2X2_RVT U66 ( .A1(sign), .A2(n75), .Y(N2) );
  XOR2X2_RVT U68 ( .A1(sign), .A2(in[3]), .Y(N5) );
  XOR2X2_RVT U69 ( .A1(sign), .A2(in[4]), .Y(N4) );
  AND2X1_RVT U70 ( .A1(n43), .A2(n40), .Y(frac[0]) );
  AND2X1_RVT U71 ( .A1(n5), .A2(twos[1]), .Y(n41) );
  AO22X1_RVT U72 ( .A1(n3), .A2(n41), .A3(n42), .A4(twos[0]), .Y(frac[1]) );
  NAND3X0_RVT U74 ( .A1(n3), .A2(n5), .A3(twos[2]), .Y(n45) );
  NAND3X0_RVT U75 ( .A1(n47), .A2(n46), .A3(n45), .Y(frac[2]) );
  NAND2X0_RVT U76 ( .A1(n4), .A2(n48), .Y(n51) );
  XOR2X1_RVT U77 ( .A1(zc[2]), .A2(n12), .Y(n50) );
  MUX21X1_RVT U78 ( .A1(n51), .A2(n50), .S0(n49), .Y(n52) );
  NAND2X0_RVT U79 ( .A1(n52), .A2(n55), .Y(regime[2]) );
  AO21X1_RVT U80 ( .A1(n54), .A2(n53), .A3(n12), .Y(n56) );
  NAND2X0_RVT U81 ( .A1(n56), .A2(n55), .Y(regime[3]) );
  lead_detector_0 l1 ( .in({1'b0, inv}), .out(zc) );
  decodePosit_0_DW01_add_J1_0_0 add_x_1 ( .A({N2, N3, N4, N5, n63, n69, n61}), 
        .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, in[7]}), .CI(1'b0), .SUM({n72, 
        twos}), .CO(), .IN0(IN0), .IN1(IN1) );
  DFFARX2_RVT R_264 ( .D(in[7]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n10) );
  NBUFFX2_RVT U34 ( .A(n72), .Y(n12) );
  INVX0_HVT U6 ( .A(n12), .Y(n48) );
  OR2X1_RVT U53 ( .A1(zc[1]), .A2(zc[0]), .Y(n49) );
  INVX1_RVT U22 ( .A(zc[2]), .Y(n53) );
  INVX1_RVT U52 ( .A(n49), .Y(n54) );
  NAND3X0_RVT U25 ( .A1(n54), .A2(n12), .A3(n53), .Y(n55) );
  INVX1_HVT U8 ( .A(twos[2]), .Y(n2) );
  INVX1_HVT U20 ( .A(n53), .Y(n4) );
  XOR2X1_RVT U58 ( .A1(n72), .A2(twos[0]), .Y(inv[0]) );
  NAND2X0_RVT U9 ( .A1(n44), .A2(n73), .Y(n47) );
  INVX1_RVT U15 ( .A(n14), .Y(n22) );
  INVX1_RVT U17 ( .A(in[5]), .Y(n34) );
  INVX2_RVT U33 ( .A(n10), .Y(sign) );
  NAND4X0_HVT U67 ( .A1(n57), .A2(n36), .A3(n35), .A4(n34), .Y(n37) );
  AND2X1_HVT U73 ( .A1(n28), .A2(twos[1]), .Y(n73) );
  XOR2X2_RVT U83 ( .A1(n34), .A2(n10), .Y(N3) );
  INVX1_RVT U84 ( .A(n74), .Y(n75) );
endmodule


module positMul_DW_mult_uns_7 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n882, n883, n884, n885, n886;

  INVX0_RVT U106 ( .A(n855), .Y(n857) );
  INVX0_RVT U108 ( .A(b[1]), .Y(n835) );
  OR2X1_RVT U111 ( .A1(n836), .A2(n814), .Y(n829) );
  INVX0_RVT U114 ( .A(b[0]), .Y(n811) );
  AND2X1_RVT U116 ( .A1(n807), .A2(n837), .Y(n823) );
  AND2X1_RVT U117 ( .A1(a[0]), .A2(b[2]), .Y(n807) );
  AND2X1_RVT U118 ( .A1(a[1]), .A2(b[1]), .Y(n837) );
  OR2X1_RVT U119 ( .A1(n845), .A2(n846), .Y(n808) );
  XOR3X2_RVT U120 ( .A1(n824), .A2(n825), .A3(n823), .Y(n809) );
  AND2X1_RVT U121 ( .A1(b[0]), .A2(a[3]), .Y(n826) );
  AND2X1_RVT U122 ( .A1(n828), .A2(n843), .Y(n810) );
  AO22X1_RVT U124 ( .A1(n822), .A2(n821), .A3(n820), .A4(n819), .Y(n851) );
  XOR3X2_RVT U125 ( .A1(n829), .A2(n848), .A3(n817), .Y(n812) );
  INVX1_RVT U126 ( .A(n829), .Y(n850) );
  AND2X1_RVT U129 ( .A1(b[2]), .A2(a[2]), .Y(n822) );
  AND2X1_RVT U130 ( .A1(b[3]), .A2(a[1]), .Y(n816) );
  AND2X1_RVT U131 ( .A1(a[3]), .A2(b[1]), .Y(n815) );
  INVX1_RVT U132 ( .A(a[2]), .Y(n836) );
  AND2X1_RVT U133 ( .A1(a[3]), .A2(b[2]), .Y(n848) );
  HADDX1_RVT U134 ( .A0(n816), .B0(n815), .C1(n849), .SO(n819) );
  INVX1_RVT U135 ( .A(n849), .Y(n817) );
  OR2X1_RVT U136 ( .A1(n822), .A2(n818), .Y(n820) );
  FADDX1_RVT U137 ( .A(n825), .B(n823), .CI(n824), .CO(n846), .S(n843) );
  HADDX1_RVT U138 ( .A0(n885), .B0(n826), .C1(n818), .SO(n842) );
  AND2X1_RVT U139 ( .A1(b[3]), .A2(a[3]), .Y(n861) );
  AND2X1_RVT U140 ( .A1(n842), .A2(n861), .Y(n828) );
  NAND2X0_RVT U141 ( .A1(n861), .A2(n846), .Y(n832) );
  INVX1_RVT U142 ( .A(n830), .Y(n860) );
  NAND2X0_RVT U143 ( .A1(n851), .A2(n861), .Y(n831) );
  AND3X1_RVT U144 ( .A1(n832), .A2(n860), .A3(n831), .Y(n833) );
  OR2X1_RVT U145 ( .A1(n842), .A2(n809), .Y(n869) );
  NOR2X0_RVT U147 ( .A1(n835), .A2(n875), .Y(n876) );
  AND2X1_RVT U148 ( .A1(n877), .A2(n876), .Y(n878) );
  NOR2X0_RVT U149 ( .A1(n836), .A2(n811), .Y(n839) );
  NAND2X0_RVT U150 ( .A1(a[0]), .A2(b[2]), .Y(n838) );
  XNOR2X2_RVT U151 ( .A1(n838), .A2(n883), .Y(n840) );
  OR2X1_RVT U152 ( .A1(n839), .A2(n840), .Y(n872) );
  NAND2X0_RVT U153 ( .A1(n878), .A2(n872), .Y(n841) );
  NAND2X0_RVT U154 ( .A1(n840), .A2(n839), .Y(n873) );
  AND2X1_RVT U155 ( .A1(n841), .A2(n873), .Y(n870) );
  NAND2X0_RVT U156 ( .A1(n809), .A2(n842), .Y(n868) );
  OA21X1_RVT U157 ( .A1(n870), .A2(n844), .A3(n868), .Y(n867) );
  NAND2X0_RVT U158 ( .A1(n846), .A2(n845), .Y(n865) );
  FADDX1_RVT U160 ( .A(n850), .B(n849), .CI(n848), .CO(n830), .S(n852) );
  NAND2X0_RVT U161 ( .A1(n852), .A2(n851), .Y(n856) );
  NAND2X0_RVT U164 ( .A1(n808), .A2(n855), .Y(n859) );
  OA21X1_RVT U165 ( .A1(n857), .A2(n865), .A3(n856), .Y(n858) );
  OA21X1_RVT U166 ( .A1(n859), .A2(n867), .A3(n858), .Y(n863) );
  NAND2X0_RVT U167 ( .A1(n861), .A2(n860), .Y(n862) );
  NAND2X0_RVT U168 ( .A1(n865), .A2(n808), .Y(n866) );
  NAND2X0_RVT U170 ( .A1(n869), .A2(n868), .Y(n871) );
  XOR2X2_RVT U171 ( .A1(n871), .A2(n870), .Y(product[3]) );
  NAND2X0_RVT U172 ( .A1(n873), .A2(n872), .Y(n874) );
  AND2X1_RVT U175 ( .A1(n880), .A2(n879), .Y(product[1]) );
  INVX0_RVT U128 ( .A(b[2]), .Y(n813) );
  NOR2X0_RVT U174 ( .A1(n811), .A2(n875), .Y(product[0]) );
  NOR2X0_RVT U146 ( .A1(n834), .A2(n811), .Y(n877) );
  NOR2X0_RVT U99 ( .A1(n834), .A2(n813), .Y(n824) );
  OR2X1_HVT U110 ( .A1(n877), .A2(n876), .Y(n880) );
  INVX0_HVT U107 ( .A(n878), .Y(n879) );
  INVX0_RVT U98 ( .A(n869), .Y(n844) );
  OR2X1_RVT U123 ( .A1(n812), .A2(n851), .Y(n855) );
  INVX1_HVT U112 ( .A(a[0]), .Y(n875) );
  INVX1_HVT U109 ( .A(n808), .Y(n847) );
  AND2X1_RVT U162 ( .A1(n856), .A2(n855), .Y(n853) );
  XNOR2X1_RVT U173 ( .A1(n874), .A2(n878), .Y(product[2]) );
  OA21X1_RVT U97 ( .A1(n847), .A2(n867), .A3(n865), .Y(n884) );
  INVX1_RVT U100 ( .A(a[1]), .Y(n834) );
  NAND2X0_RVT U101 ( .A1(n833), .A2(n882), .Y(product[7]) );
  NAND3X0_RVT U102 ( .A1(n886), .A2(n810), .A3(n855), .Y(n882) );
  XOR3X2_RVT U103 ( .A1(n821), .A2(n822), .A3(n819), .Y(n845) );
  AND4X1_RVT U104 ( .A1(a[2]), .A2(b[1]), .A3(a[3]), .A4(b[0]), .Y(n821) );
  NBUFFX2_RVT U105 ( .A(n837), .Y(n883) );
  INVX0_RVT U113 ( .A(b[3]), .Y(n814) );
  AND2X1_RVT U115 ( .A1(a[0]), .A2(b[3]), .Y(n825) );
  XOR2X2_RVT U127 ( .A1(n863), .A2(n862), .Y(product[6]) );
  XOR2X1_RVT U159 ( .A1(n867), .A2(n866), .Y(product[4]) );
  XNOR2X2_RVT U163 ( .A1(n884), .A2(n853), .Y(product[5]) );
  AND2X1_RVT U169 ( .A1(b[1]), .A2(a[2]), .Y(n885) );
  OR2X1_RVT U176 ( .A1(n846), .A2(n845), .Y(n886) );
endmodule


module positMul_DW01_add_4 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n227, n228, n229, n230, n232, n233, n234, n235, n236, n238, n239,
         n240, n241, n242, n243, n244;

  XOR2X1_RVT U58 ( .A1(n227), .A2(n235), .Y(SUM[1]) );
  AND2X1_RVT U61 ( .A1(n236), .A2(n227), .Y(SUM[0]) );
  INVX1_RVT U63 ( .A(A[5]), .Y(n243) );
  AND2X1_RVT U64 ( .A1(A[4]), .A2(A[3]), .Y(n242) );
  AND3X1_RVT U66 ( .A1(n242), .A2(n233), .A3(B[0]), .Y(n228) );
  NAND4X0_RVT U67 ( .A1(B[0]), .A2(n242), .A3(n233), .A4(A[5]), .Y(n244) );
  NAND2X0_RVT U68 ( .A1(n229), .A2(A[3]), .Y(n241) );
  AND2X1_RVT U69 ( .A1(n233), .A2(B[0]), .Y(n229) );
  NBUFFX2_RVT U70 ( .A(n238), .Y(n227) );
  XNOR2X2_RVT U71 ( .A1(n228), .A2(n243), .Y(SUM[5]) );
  XNOR2X2_RVT U72 ( .A1(n244), .A2(A[6]), .Y(SUM[6]) );
  AND2X1_RVT U74 ( .A1(A[1]), .A2(A[2]), .Y(n230) );
  AND2X1_RVT U75 ( .A1(n230), .A2(A[0]), .Y(n233) );
  XNOR2X2_RVT U76 ( .A1(n232), .A2(n234), .Y(SUM[2]) );
  INVX1_RVT U77 ( .A(A[1]), .Y(n235) );
  INVX1_RVT U78 ( .A(A[3]), .Y(n239) );
  XNOR2X2_RVT U79 ( .A1(n229), .A2(n239), .Y(SUM[3]) );
  INVX1_RVT U80 ( .A(A[4]), .Y(n240) );
  XOR2X2_RVT U81 ( .A1(n241), .A2(n240), .Y(SUM[4]) );
  NBUFFX2_HVT U65 ( .A(A[2]), .Y(n234) );
  OR2X2_HVT U59 ( .A1(B[0]), .A2(A[0]), .Y(n236) );
  OR2X1_RVT U60 ( .A1(n235), .A2(n238), .Y(n232) );
  NAND2X0_RVT U62 ( .A1(B[0]), .A2(A[0]), .Y(n238) );
endmodule


module positMul_DW01_add_5 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n238, n239, n240, n241, n243, n244, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287;

  OAI21X1_RVT U81 ( .A1(n254), .A2(n253), .A3(n252), .Y(n258) );
  OAI21X1_RVT U82 ( .A1(n283), .A2(n282), .A3(n281), .Y(n287) );
  INVX0_RVT U83 ( .A(n279), .Y(n269) );
  NAND2X0_RVT U86 ( .A1(B[0]), .A2(A[0]), .Y(n275) );
  INVX1_RVT U87 ( .A(B[6]), .Y(n285) );
  OR2X1_RVT U88 ( .A1(n279), .A2(n280), .Y(n240) );
  AND2X1_RVT U89 ( .A1(n239), .A2(n238), .Y(n279) );
  NAND2X0_RVT U90 ( .A1(B[1]), .A2(A[1]), .Y(n238) );
  NAND2X0_RVT U91 ( .A1(A[0]), .A2(B[0]), .Y(n239) );
  NAND2X0_RVT U92 ( .A1(n240), .A2(n278), .Y(n249) );
  AOI22X1_RVT U93 ( .A1(B[2]), .A2(A[2]), .A3(B[3]), .A4(A[3]), .Y(n278) );
  OAI22X1_RVT U94 ( .A1(B[2]), .A2(A[2]), .A3(A[1]), .A4(B[1]), .Y(n280) );
  INVX1_RVT U95 ( .A(n244), .Y(n268) );
  OA21X1_RVT U96 ( .A1(n254), .A2(n253), .A3(n252), .Y(n241) );
  OAI21X1_RVT U97 ( .A1(n275), .A2(n268), .A3(n261), .Y(n265) );
  INVX0_RVT U98 ( .A(n275), .Y(n272) );
  AOI21X1_RVT U99 ( .A1(n243), .A2(n269), .A3(n271), .Y(SUM[2]) );
  XOR2X2_RVT U100 ( .A1(n270), .A2(n244), .Y(n243) );
  OR2X1_RVT U101 ( .A1(A[1]), .A2(B[1]), .Y(n244) );
  XNOR2X2_RVT U102 ( .A1(A[2]), .A2(B[2]), .Y(n270) );
  XNOR2X2_RVT U104 ( .A1(A[4]), .A2(B[4]), .Y(n247) );
  AND2X1_RVT U105 ( .A1(n247), .A2(n282), .Y(n251) );
  XNOR2X2_RVT U107 ( .A1(n247), .A2(n246), .Y(n248) );
  AND2X1_RVT U108 ( .A1(n249), .A2(n248), .Y(n250) );
  INVX1_RVT U110 ( .A(A[6]), .Y(n284) );
  XNOR2X2_RVT U111 ( .A1(n284), .A2(n285), .Y(n256) );
  OAI22X1_RVT U112 ( .A1(B[3]), .A2(A[3]), .A3(B[2]), .A4(A[2]), .Y(n254) );
  AOI22X1_RVT U113 ( .A1(A[2]), .A2(B[2]), .A3(A[1]), .A4(B[1]), .Y(n261) );
  OA21X1_RVT U114 ( .A1(n275), .A2(n268), .A3(n261), .Y(n253) );
  AOI22X1_RVT U115 ( .A1(A[4]), .A2(B[4]), .A3(A[3]), .A4(B[3]), .Y(n252) );
  AND2X1_RVT U116 ( .A1(n256), .A2(n241), .Y(n260) );
  AND2X1_RVT U118 ( .A1(n258), .A2(n257), .Y(n259) );
  XNOR2X2_RVT U120 ( .A1(A[3]), .A2(B[3]), .Y(n263) );
  AND2X1_RVT U121 ( .A1(n253), .A2(n263), .Y(n267) );
  XNOR2X2_RVT U123 ( .A1(n263), .A2(n262), .Y(n264) );
  AND2X1_RVT U124 ( .A1(n265), .A2(n264), .Y(n266) );
  AND2X1_RVT U126 ( .A1(n279), .A2(n270), .Y(n271) );
  XNOR2X2_RVT U127 ( .A1(A[1]), .A2(B[1]), .Y(n274) );
  AND2X1_RVT U128 ( .A1(n273), .A2(n272), .Y(n277) );
  AND2X1_RVT U129 ( .A1(n275), .A2(n274), .Y(n276) );
  OAI22X1_RVT U131 ( .A1(B[4]), .A2(A[4]), .A3(B[3]), .A4(A[3]), .Y(n283) );
  OA21X1_RVT U132 ( .A1(n280), .A2(n279), .A3(n278), .Y(n282) );
  AOI22X1_RVT U133 ( .A1(A[4]), .A2(B[4]), .A3(n284), .A4(n285), .Y(n281) );
  NAND2X0_RVT U134 ( .A1(n287), .A2(n286), .Y(SUM[6]) );
  XOR2X1_RVT U103 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  NOR2X0_RVT U117 ( .A1(B[4]), .A2(A[4]), .Y(n255) );
  NOR2X0_RVT U106 ( .A1(B[3]), .A2(A[3]), .Y(n246) );
  NOR2X0_RVT U122 ( .A1(B[2]), .A2(A[2]), .Y(n262) );
  INVX0_RVT U84 ( .A(n274), .Y(n273) );
  OR2X1_HVT U85 ( .A1(n285), .A2(n284), .Y(n286) );
  XNOR2X1_RVT U80 ( .A1(n256), .A2(n255), .Y(n257) );
  NOR2X0_RVT U130 ( .A1(n277), .A2(n276), .Y(SUM[1]) );
  NOR2X0_RVT U125 ( .A1(n267), .A2(n266), .Y(SUM[3]) );
  NOR2X0_RVT U109 ( .A1(n251), .A2(n250), .Y(SUM[4]) );
  NOR2X0_RVT U119 ( .A1(n260), .A2(n259), .Y(SUM[5]) );
endmodule


module positMul_DW01_add_3 ( A, B, CI, SUM, CO, IN0, IN1 );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI, IN0, IN1;
  output CO;
  wire   n71, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n283;

  OA21X1_RVT U59 ( .A1(B[0]), .A2(A[0]), .A3(n254), .Y(SUM[0]) );
  INVX1_RVT U61 ( .A(n265), .Y(SUM[5]) );
  OR3X1_RVT U62 ( .A1(n267), .A2(n254), .A3(n272), .Y(n262) );
  INVX0_RVT U63 ( .A(A[3]), .Y(n277) );
  AND2X1_RVT U65 ( .A1(A[4]), .A2(A[5]), .Y(n274) );
  NAND2X0_RVT U66 ( .A1(n258), .A2(n253), .Y(n256) );
  AND2X1_RVT U67 ( .A1(B[0]), .A2(A[0]), .Y(n253) );
  AND3X1_RVT U68 ( .A1(A[1]), .A2(A[2]), .A3(A[3]), .Y(n258) );
  AND2X1_RVT U69 ( .A1(B[0]), .A2(A[0]), .Y(n259) );
  NAND2X0_RVT U70 ( .A1(B[0]), .A2(A[0]), .Y(n254) );
  XNOR2X2_RVT U71 ( .A1(n256), .A2(n255), .Y(SUM[4]) );
  NAND2X0_RVT U73 ( .A1(n253), .A2(n257), .Y(n263) );
  AND2X1_RVT U74 ( .A1(n258), .A2(n274), .Y(n257) );
  AND2X1_RVT U75 ( .A1(n264), .A2(n253), .Y(n278) );
  NAND2X0_RVT U76 ( .A1(n253), .A2(A[1]), .Y(n268) );
  NAND2X0_RVT U77 ( .A1(n253), .A2(n258), .Y(n275) );
  NAND3X0_RVT U78 ( .A1(A[1]), .A2(A[2]), .A3(A[3]), .Y(n272) );
  XNOR2X2_RVT U79 ( .A1(n268), .A2(n283), .Y(SUM[2]) );
  NAND2X0_RVT U80 ( .A1(n260), .A2(A[5]), .Y(n261) );
  OR2X1_RVT U81 ( .A1(n273), .A2(n272), .Y(n260) );
  AND3X1_RVT U82 ( .A1(n262), .A2(n261), .A3(n266), .Y(n265) );
  INVX1_RVT U84 ( .A(A[1]), .Y(n279) );
  XNOR2X2_RVT U86 ( .A1(n259), .A2(n279), .Y(SUM[1]) );
  NAND2X0_RVT U87 ( .A1(n254), .A2(A[5]), .Y(n266) );
  NAND2X0_RVT U88 ( .A1(A[4]), .A2(n271), .Y(n267) );
  NAND3X0_RVT U89 ( .A1(A[6]), .A2(A[5]), .A3(A[4]), .Y(n269) );
  XNOR2X2_RVT U91 ( .A1(n270), .A2(n280), .Y(SUM[7]) );
  INVX0_RVT U93 ( .A(A[5]), .Y(n271) );
  XNOR2X2_RVT U94 ( .A1(n278), .A2(n277), .Y(SUM[3]) );
  INVX1_HVT U64 ( .A(A[6]), .Y(n276) );
  NOR2X0_RVT U90 ( .A1(n269), .A2(n275), .Y(n270) );
  INVX1_HVT U92 ( .A(A[4]), .Y(n273) );
  INVX1_HVT U72 ( .A(n273), .Y(n255) );
  DFFASX1_HVT R_83_RW_0 ( .D(n71), .CLK(IN0), .SETB(IN1), .Q(n280), .QN() );
  XOR2X1_RVT U83 ( .A1(n263), .A2(n276), .Y(SUM[6]) );
  INVX1_RVT U60 ( .A(A[7]), .Y(n71) );
  AND2X1_HVT U85 ( .A1(A[1]), .A2(A[2]), .Y(n264) );
  NBUFFX2_RVT U95 ( .A(A[2]), .Y(n283) );
endmodule


module positMul_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303;

  INVX0_RVT U57 ( .A(n288), .Y(n290) );
  XOR2X1_RVT U58 ( .A1(n294), .A2(n286), .Y(DIFF[3]) );
  INVX0_RVT U60 ( .A(B[6]), .Y(n291) );
  INVX0_RVT U62 ( .A(B[4]), .Y(n298) );
  OR3X1_RVT U64 ( .A1(n284), .A2(B[6]), .A3(n283), .Y(n287) );
  OR2X1_RVT U65 ( .A1(B[4]), .A2(B[5]), .Y(n283) );
  OR3X1_RVT U66 ( .A1(n292), .A2(B[3]), .A3(B[2]), .Y(n284) );
  OR2X1_RVT U67 ( .A1(B[1]), .A2(B[0]), .Y(n292) );
  OR3X1_RVT U68 ( .A1(n292), .A2(B[3]), .A3(B[2]), .Y(n285) );
  NBUFFX2_RVT U69 ( .A(B[3]), .Y(n286) );
  OR2X1_RVT U70 ( .A1(B[4]), .A2(B[5]), .Y(n288) );
  XNOR2X1_RVT U71 ( .A1(n303), .A2(B[4]), .Y(DIFF[4]) );
  XNOR2X2_RVT U72 ( .A1(n287), .A2(n300), .Y(DIFF[7]) );
  NBUFFX2_RVT U73 ( .A(B[5]), .Y(n289) );
  NAND2X0_RVT U74 ( .A1(n290), .A2(n303), .Y(n297) );
  NAND2X0_RVT U77 ( .A1(n293), .A2(n296), .Y(n294) );
  XNOR2X1_RVT U78 ( .A1(B[1]), .A2(n295), .Y(DIFF[1]) );
  XOR2X2_RVT U79 ( .A1(n297), .A2(B[6]), .Y(DIFF[6]) );
  NAND2X0_RVT U80 ( .A1(n298), .A2(n303), .Y(n299) );
  XOR2X2_RVT U81 ( .A1(n299), .A2(n289), .Y(DIFF[5]) );
  NAND2X0_RVT U82 ( .A1(n291), .A2(n300), .Y(n301) );
  NAND2X0_RVT U84 ( .A1(n303), .A2(n302), .Y(DIFF[8]) );
  XNOR2X1_RVT U75 ( .A1(n296), .A2(B[2]), .Y(DIFF[2]) );
  INVX1_RVT U56 ( .A(n285), .Y(n303) );
  NOR2X0_RVT U83 ( .A1(n288), .A2(n301), .Y(n302) );
  INVX1_HVT U63 ( .A(B[0]), .Y(n295) );
  INVX1_RVT U59 ( .A(n292), .Y(n296) );
  INVX1_RVT U61 ( .A(B[2]), .Y(n293) );
  INVX1_RVT U76 ( .A(B[7]), .Y(n300) );
endmodule


module positMul ( A, B, clk, rst_n, P, overflow );
  input [7:0] A;
  input [7:0] B;
  output [7:0] P;
  input clk, rst_n;
  output overflow;
  wire   c_signA, c_zA, c_zB, fracB_0_, inf, round, N81, N82, N83, N84, N85,
         N86, N87, N88, n173, n176, n180, n183, n358, n497, n514, restmp_0_,
         N19, N18, N17, N16, N15, N14, N13, n845, n847, n848, n849, n850, n851,
         n846, n185, n189, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n974, n975,
         n976, n977, n978, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1163, n1164, n1165, n1166, n1167, n1169,
         SYNOPSYS_UNCONNECTED_1;
  wire   [5:3] p1_A;
  wire   [4:3] p1_B;
  wire   [3:0] c_regA;
  wire   [1:0] c_expA;
  wire   [3:0] c_fracA;
  wire   [3:0] c_regB;
  wire   [1:0] c_expB;
  wire   [3:0] c_fracB;
  wire   [3:1] regA;
  wire   [3:1] regB;
  wire   [1:0] expA;
  wire   [1:0] expB;
  wire   [7:0] frac_mul;
  wire   [6:1] sfmult;
  wire   [17:12] tmp;
  wire   [7:1] restmp;

  DFFARX1_RVT p1_B_reg_5_ ( .D(B[5]), .CLK(clk), .RSTB(rst_n), .Q(), .QN(n1163) );
  DFFARX1_RVT p1_B_reg_4_ ( .D(B[4]), .CLK(clk), .RSTB(rst_n), .Q(p1_B[4]), 
        .QN() );
  DFFARX1_RVT p1_B_reg_3_ ( .D(B[3]), .CLK(clk), .RSTB(rst_n), .Q(p1_B[3]), 
        .QN() );
  DFFARX1_RVT p1_A_reg_5_ ( .D(A[5]), .CLK(clk), .RSTB(rst_n), .Q(p1_A[5]), 
        .QN() );
  DFFARX1_RVT p1_A_reg_4_ ( .D(A[4]), .CLK(clk), .RSTB(rst_n), .Q(p1_A[4]), 
        .QN() );
  DFFARX1_RVT p1_A_reg_3_ ( .D(A[3]), .CLK(clk), .RSTB(rst_n), .Q(p1_A[3]), 
        .QN() );
  DFFARX1_RVT regA_reg_3_ ( .D(c_regA[3]), .CLK(clk), .RSTB(rst_n), .Q(regA[3]), .QN() );
  DFFARX1_RVT regA_reg_2_ ( .D(c_regA[2]), .CLK(clk), .RSTB(rst_n), .Q(regA[2]), .QN() );
  DFFARX1_RVT regA_reg_1_ ( .D(c_regA[1]), .CLK(clk), .RSTB(rst_n), .Q(regA[1]), .QN() );
  DFFARX1_RVT regA_reg_0_ ( .D(c_regA[0]), .CLK(clk), .RSTB(rst_n), .Q(), .QN(
        n908) );
  DFFARX1_RVT regB_reg_3_ ( .D(c_regB[3]), .CLK(clk), .RSTB(rst_n), .Q(regB[3]), .QN() );
  DFFARX1_RVT regB_reg_2_ ( .D(c_regB[2]), .CLK(clk), .RSTB(rst_n), .Q(regB[2]), .QN() );
  DFFARX1_RVT regB_reg_1_ ( .D(c_regB[1]), .CLK(clk), .RSTB(rst_n), .Q(regB[1]), .QN() );
  DFFARX1_RVT regB_reg_0_ ( .D(c_regB[0]), .CLK(clk), .RSTB(rst_n), .Q(), .QN(
        n910) );
  DFFARX1_RVT expA_reg_1_ ( .D(c_expA[1]), .CLK(clk), .RSTB(rst_n), .Q(expA[1]), .QN() );
  DFFARX1_RVT expA_reg_0_ ( .D(c_expA[0]), .CLK(clk), .RSTB(rst_n), .Q(expA[0]), .QN() );
  DFFARX1_RVT expB_reg_1_ ( .D(c_expB[1]), .CLK(clk), .RSTB(rst_n), .Q(expB[1]), .QN() );
  DFFARX1_RVT expB_reg_0_ ( .D(c_expB[0]), .CLK(clk), .RSTB(rst_n), .Q(expB[0]), .QN() );
  DFFARX1_RVT fracA_reg_0_ ( .D(c_fracA[0]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n176) );
  DFFARX1_RVT fracA_reg_3_ ( .D(c_fracA[3]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n185) );
  DFFARX1_RVT fracB_reg_3_ ( .D(c_fracB[3]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n183) );
  DFFARX1_RVT fracB_reg_2_ ( .D(c_fracB[2]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n173) );
  DFFARX1_RVT fracA_reg_1_ ( .D(c_fracA[1]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n358) );
  DFFASX1_RVT R_172 ( .D(n1105), .CLK(clk), .SETB(rst_n), .Q(n1094), .QN() );
  DFFARX1_RVT R_186 ( .D(n1155), .CLK(clk), .RSTB(rst_n), .Q(n1093), .QN() );
  DFFARX1_RVT R_188 ( .D(n1153), .CLK(clk), .RSTB(rst_n), .Q(n1092), .QN() );
  DFFARX1_RVT R_234 ( .D(n1147), .CLK(clk), .RSTB(rst_n), .Q(n1090), .QN() );
  DFFARX1_RVT R_249 ( .D(n1108), .CLK(clk), .RSTB(rst_n), .Q(n1089), .QN() );
  DFFASX1_RVT R_251 ( .D(n1138), .CLK(clk), .SETB(rst_n), .Q(n1088), .QN() );
  DFFASX1_RVT R_252 ( .D(n1137), .CLK(clk), .SETB(rst_n), .Q(n1087), .QN() );
  DFFARX1_RVT R_253 ( .D(n1136), .CLK(clk), .RSTB(rst_n), .Q(n1086), .QN() );
  DFFASX1_RVT R_257 ( .D(n1165), .CLK(clk), .SETB(rst_n), .Q(n1085), .QN() );
  DFFASX1_RVT R_270 ( .D(n1152), .CLK(clk), .SETB(rst_n), .Q(), .QN(n930) );
  DFFASX1_RVT R_296 ( .D(n1131), .CLK(clk), .SETB(rst_n), .Q(n1077), .QN() );
  DFFARX1_RVT R_297 ( .D(n1137), .CLK(clk), .RSTB(rst_n), .Q(n1076), .QN() );
  DFFASX1_RVT R_298 ( .D(n1134), .CLK(clk), .SETB(rst_n), .Q(n1075), .QN() );
  DFFARX1_RVT R_301 ( .D(n1133), .CLK(clk), .RSTB(rst_n), .Q(n1074), .QN() );
  DFFASX1_RVT R_305 ( .D(n1117), .CLK(clk), .SETB(rst_n), .Q(), .QN(n931) );
  DFFARX1_RVT R_315 ( .D(n1142), .CLK(clk), .RSTB(rst_n), .Q(n1072), .QN() );
  DFFASX1_RVT R_316 ( .D(n1125), .CLK(clk), .SETB(rst_n), .Q(n1071), .QN() );
  DFFARX1_RVT R_319 ( .D(n1123), .CLK(clk), .RSTB(rst_n), .Q(n1069), .QN() );
  DFFASX1_RVT R_318 ( .D(n1124), .CLK(clk), .SETB(rst_n), .Q(n1070), .QN() );
  DFFARX1_RVT R_324 ( .D(n1116), .CLK(clk), .RSTB(rst_n), .Q(n1068), .QN() );
  DFFASX1_RVT R_334 ( .D(n1100), .CLK(clk), .SETB(rst_n), .Q(n1067), .QN() );
  DFFARX1_RVT R_336 ( .D(n1154), .CLK(clk), .RSTB(rst_n), .Q(n1066), .QN() );
  DFFASX1_RVT R_338 ( .D(sfmult[1]), .CLK(clk), .SETB(rst_n), .Q(n1065), .QN()
         );
  DFFASX1_RVT R_345 ( .D(n1130), .CLK(clk), .SETB(rst_n), .Q(n899), .QN(n952)
         );
  DFFASX1_RVT R_346 ( .D(n1148), .CLK(clk), .SETB(rst_n), .Q(n1063), .QN() );
  DFFASX1_RVT R_347 ( .D(n926), .CLK(clk), .SETB(rst_n), .Q(n1062), .QN() );
  DFFARX1_RVT R_349 ( .D(n1126), .CLK(clk), .RSTB(rst_n), .Q(n1061), .QN() );
  DFFARX1_RVT R_350 ( .D(n1129), .CLK(clk), .RSTB(rst_n), .Q(n1060), .QN() );
  DFFASX1_RVT R_354 ( .D(n1132), .CLK(clk), .SETB(rst_n), .Q(n1059), .QN() );
  DFFASX1_RVT R_321_RW_0 ( .D(n1102), .CLK(clk), .SETB(rst_n), .Q(), .QN(n900)
         );
  DFFASX1_RVT R_360 ( .D(n1151), .CLK(clk), .SETB(rst_n), .Q(n1058), .QN() );
  DFFASX1_RVT R_361 ( .D(n1150), .CLK(clk), .SETB(rst_n), .Q(n1057), .QN() );
  DFFASX1_RVT R_362 ( .D(n1039), .CLK(clk), .SETB(rst_n), .Q(), .QN(n929) );
  DFFASX1_RVT R_363 ( .D(n1112), .CLK(clk), .SETB(rst_n), .Q(n1056), .QN() );
  DFFASX1_RVT R_364 ( .D(n1111), .CLK(clk), .SETB(rst_n), .Q(n1055), .QN() );
  DFFASX1_RVT R_365 ( .D(n1110), .CLK(clk), .SETB(rst_n), .Q(n1054), .QN() );
  DFFASX1_RVT R_366 ( .D(n1121), .CLK(clk), .SETB(rst_n), .Q(n1053), .QN() );
  DFFASX1_RVT R_367 ( .D(n1120), .CLK(clk), .SETB(rst_n), .Q(n1052), .QN() );
  DFFARX1_RVT R_369 ( .D(n1119), .CLK(clk), .RSTB(rst_n), .Q(n1051), .QN() );
  DFFASX1_RVT R_370 ( .D(n1101), .CLK(clk), .SETB(rst_n), .Q(n1050), .QN() );
  DFFASX1_RVT R_371 ( .D(n1122), .CLK(clk), .SETB(rst_n), .Q(n1049), .QN() );
  DFFARX1_RVT R_373 ( .D(n1128), .CLK(clk), .RSTB(rst_n), .Q(), .QN(n904) );
  DFFARX1_RVT R_374 ( .D(n917), .CLK(clk), .RSTB(rst_n), .Q(), .QN(n903) );
  DFFASX1_RVT R_375 ( .D(n1099), .CLK(clk), .SETB(rst_n), .Q(n1048), .QN() );
  DFFARX1_RVT R_376 ( .D(n1098), .CLK(clk), .RSTB(rst_n), .Q(n1047), .QN() );
  DFFASX1_RVT R_377 ( .D(n1104), .CLK(clk), .SETB(rst_n), .Q(n1046), .QN() );
  DFFARX1_RVT R_378 ( .D(n1103), .CLK(clk), .RSTB(rst_n), .Q(n1045), .QN() );
  DFFARX1_RVT R_379 ( .D(n1144), .CLK(clk), .RSTB(rst_n), .Q(n922), .QN() );
  DFFASX1_RVT R_380 ( .D(n1140), .CLK(clk), .SETB(rst_n), .Q(n1044), .QN() );
  DFFASX1_RVT R_383 ( .D(n1127), .CLK(clk), .SETB(rst_n), .Q(), .QN(n905) );
  DFFASX1_RVT R_384 ( .D(n1118), .CLK(clk), .SETB(rst_n), .Q(n1043), .QN() );
  DFFASX1_RVT R_385 ( .D(n1141), .CLK(clk), .SETB(rst_n), .Q(n923), .QN(n950)
         );
  DFFARX1_HVT R_278 ( .D(n1083), .CLK(clk), .RSTB(rst_n), .Q(inf), .QN(n1041)
         );
  DFFARX1_HVT R_391 ( .D(n1042), .CLK(clk), .RSTB(rst_n), .Q(n1157), .QN(n1040) );
  DFFASX1_RVT R_308 ( .D(n1166), .CLK(clk), .SETB(rst_n), .Q(n1073), .QN() );
  DFFASX1_RVT fracB_reg_0_ ( .D(n1038), .CLK(clk), .SETB(rst_n), .Q(), .QN(
        fracB_0_) );
  DFFASX1_HVT R_277 ( .D(n1084), .CLK(clk), .SETB(rst_n), .Q(n1158), .QN() );
  DFFARX1_HVT R_283 ( .D(n1159), .CLK(clk), .RSTB(rst_n), .Q(n1082), .QN() );
  DFFASX1_HVT R_284 ( .D(n1156), .CLK(clk), .SETB(rst_n), .Q(n1081), .QN() );
  DFFASX1_HVT R_1 ( .D(n1041), .CLK(clk), .SETB(rst_n), .Q(n1097), .QN() );
  DFFASX1_HVT R_285 ( .D(n1158), .CLK(clk), .SETB(rst_n), .Q(n1080), .QN() );
  DFFARX1_HVT R_13 ( .D(n1157), .CLK(clk), .RSTB(rst_n), .Q(n1096), .QN() );
  DFFARX1_HVT overflow_reg ( .D(inf), .CLK(clk), .RSTB(rst_n), .Q(overflow), 
        .QN() );
  DFFARX1_RVT R_393 ( .D(n1023), .CLK(clk), .RSTB(rst_n), .Q(n898), .QN() );
  DFFARX1_RVT R_395 ( .D(n1029), .CLK(clk), .RSTB(rst_n), .Q(n897), .QN() );
  DFFARX1_RVT R_406 ( .D(tmp[17]), .CLK(clk), .RSTB(rst_n), .Q(n872), .QN() );
  DFFASX1_RVT R_407 ( .D(n1139), .CLK(clk), .SETB(rst_n), .Q(n894), .QN(n893)
         );
  DFFASX1_RVT R_408 ( .D(n1153), .CLK(clk), .SETB(rst_n), .Q(n892), .QN() );
  DFFASX1_RVT R_409 ( .D(n876), .CLK(clk), .SETB(rst_n), .Q(n891), .QN() );
  DFFASX1_RVT R_410 ( .D(n1143), .CLK(clk), .SETB(rst_n), .Q(n890), .QN() );
  DFFASX1_RVT R_411 ( .D(n1144), .CLK(clk), .SETB(rst_n), .Q(n889), .QN(n888)
         );
  DFFASX1_RVT R_412 ( .D(n1145), .CLK(clk), .SETB(rst_n), .Q(n887), .QN() );
  DFFARX1_RVT R_413 ( .D(n1113), .CLK(clk), .RSTB(rst_n), .Q(n886), .QN() );
  DFFASX1_RVT R_414 ( .D(n1154), .CLK(clk), .SETB(rst_n), .Q(n885), .QN(n884)
         );
  DFFASX1_RVT R_415 ( .D(n1108), .CLK(clk), .SETB(rst_n), .Q(n883), .QN() );
  DFFASX1_RVT R_416 ( .D(n1149), .CLK(clk), .SETB(rst_n), .Q(n882), .QN() );
  DFFARX1_RVT R_417 ( .D(n1139), .CLK(clk), .RSTB(rst_n), .Q(n881), .QN() );
  DFFARX1_RVT R_418 ( .D(n1106), .CLK(clk), .RSTB(rst_n), .Q(n880), .QN() );
  DFFASX1_RVT R_419 ( .D(n1135), .CLK(clk), .SETB(rst_n), .Q(n879), .QN(n878)
         );
  DFFASX1_RVT R_420 ( .D(n1115), .CLK(clk), .SETB(rst_n), .Q(n877), .QN() );
  OR2X1_RVT U468 ( .A1(n1008), .A2(n857), .Y(n864) );
  INVX1_HVT U469 ( .A(sfmult[2]), .Y(n1107) );
  NAND2X0_RVT U474 ( .A1(n852), .A2(n1029), .Y(n1136) );
  INVX1_RVT U478 ( .A(n919), .Y(n979) );
  NAND2X0_RVT U479 ( .A1(n1141), .A2(n1106), .Y(n1099) );
  NAND2X0_RVT U486 ( .A1(n1141), .A2(n865), .Y(n1120) );
  NAND2X0_RVT U488 ( .A1(n1141), .A2(n1152), .Y(n1145) );
  NAND3X0_RVT U489 ( .A1(n1140), .A2(n947), .A3(n864), .Y(n1113) );
  OR3X1_RVT U495 ( .A1(frac_mul[6]), .A2(frac_mul[5]), .A3(n982), .Y(n1106) );
  INVX1_RVT U496 ( .A(n1107), .Y(n853) );
  INVX1_RVT U498 ( .A(sfmult[3]), .Y(n994) );
  OR2X1_RVT U499 ( .A1(sfmult[5]), .A2(sfmult[6]), .Y(n983) );
  NAND4X0_RVT U501 ( .A1(n1007), .A2(n1020), .A3(n1006), .A4(n1094), .Y(
        tmp[13]) );
  NAND3X0_RVT U502 ( .A1(n924), .A2(n1014), .A3(n1015), .Y(tmp[12]) );
  NAND2X0_RVT U504 ( .A1(n1018), .A2(n1089), .Y(n875) );
  INVX1_RVT U505 ( .A(n1161), .Y(n1034) );
  INVX0_RVT U506 ( .A(n1020), .Y(n972) );
  INVX1_RVT U507 ( .A(n901), .Y(n873) );
  INVX1_RVT U508 ( .A(n176), .Y(n845) );
  INVX1_RVT U510 ( .A(n183), .Y(n847) );
  INVX1_RVT U511 ( .A(n185), .Y(n846) );
  INVX1_RVT U512 ( .A(n908), .Y(n909) );
  INVX1_RVT U513 ( .A(n910), .Y(n911) );
  INVX0_RVT U514 ( .A(n905), .Y(n906) );
  NAND2X0_RVT U515 ( .A1(n858), .A2(n867), .Y(n1100) );
  AND2X1_RVT U516 ( .A1(n857), .A2(sfmult[6]), .Y(n859) );
  NAND3X0_RVT U517 ( .A1(sfmult[2]), .A2(sfmult[3]), .A3(sfmult[5]), .Y(n857)
         );
  NAND3X0_RVT U518 ( .A1(n862), .A2(n992), .A3(n996), .Y(n858) );
  INVX2_RVT U519 ( .A(n860), .Y(n992) );
  INVX2_RVT U520 ( .A(n859), .Y(n862) );
  AND2X1_RVT U521 ( .A1(n866), .A2(n1008), .Y(n860) );
  NAND3X0_RVT U522 ( .A1(n1132), .A2(n992), .A3(n862), .Y(n1134) );
  AND2X1_RVT U523 ( .A1(n992), .A2(n862), .Y(n876) );
  NAND3X0_RVT U524 ( .A1(n854), .A2(n992), .A3(n862), .Y(n1104) );
  NAND2X0_RVT U525 ( .A1(n876), .A2(n915), .Y(n1101) );
  NAND2X0_RVT U526 ( .A1(n876), .A2(n1118), .Y(n1121) );
  NAND2X0_RVT U527 ( .A1(n915), .A2(n1141), .Y(n1142) );
  AND2X1_RVT U528 ( .A1(n947), .A2(n864), .Y(n1141) );
  NAND2X0_RVT U529 ( .A1(n1122), .A2(n1141), .Y(n1125) );
  AO21X1_RVT U530 ( .A1(n863), .A2(n947), .A3(n997), .Y(n1115) );
  AND2X1_RVT U531 ( .A1(sfmult[1]), .A2(n864), .Y(n863) );
  AND2X1_RVT U532 ( .A1(n1127), .A2(n994), .Y(n865) );
  NAND2X0_RVT U533 ( .A1(n951), .A2(sfmult[2]), .Y(n866) );
  AND2X1_RVT U534 ( .A1(n988), .A2(n994), .Y(n951) );
  NAND3X0_RVT U537 ( .A1(n1148), .A2(n992), .A3(n862), .Y(n1144) );
  NAND2X0_RVT U538 ( .A1(n1039), .A2(n997), .Y(n1147) );
  AND2X1_RVT U539 ( .A1(n1030), .A2(n868), .Y(n997) );
  NAND3X0_RVT U540 ( .A1(sfmult[6]), .A2(sfmult[5]), .A3(sfmult[3]), .Y(n868)
         );
  OR2X1_RVT U541 ( .A1(sfmult[6]), .A2(n870), .Y(n1030) );
  OR2X1_RVT U542 ( .A1(n853), .A2(n869), .Y(n1039) );
  AND2X1_RVT U543 ( .A1(n871), .A2(n983), .Y(n869) );
  OR2X1_RVT U544 ( .A1(sfmult[3]), .A2(sfmult[5]), .Y(n870) );
  NAND3X0_RVT U545 ( .A1(sfmult[4]), .A2(sfmult[6]), .A3(sfmult[5]), .Y(n871)
         );
  NAND2X0_RVT U546 ( .A1(n901), .A2(n872), .Y(n949) );
  AND2X1_RVT U547 ( .A1(n873), .A2(n1078), .Y(n1002) );
  NAND3X0_RVT U548 ( .A1(n873), .A2(n1025), .A3(n894), .Y(n963) );
  NAND2X0_RVT U549 ( .A1(n927), .A2(n1034), .Y(n976) );
  NAND2X0_RVT U550 ( .A1(n956), .A2(n901), .Y(n874) );
  NAND2X0_RVT U551 ( .A1(n874), .A2(n875), .Y(n971) );
  OR2X1_RVT U552 ( .A1(n1161), .A2(n877), .Y(n1001) );
  AO21X1_RVT U553 ( .A1(n1050), .A2(n1049), .A3(n879), .Y(n1003) );
  AND3X1_RVT U554 ( .A1(n1074), .A2(n890), .A3(n1075), .Y(n1032) );
  OA21X1_RVT U555 ( .A1(n1044), .A2(n890), .A3(n894), .Y(n1035) );
  NAND3X0_RVT U556 ( .A1(n891), .A2(n1034), .A3(n1064), .Y(n1010) );
  NAND3X0_RVT U557 ( .A1(n1067), .A2(n892), .A3(n1066), .Y(n1004) );
  INVX2_RVT U558 ( .A(n189), .Y(n850) );
  NAND2X0_HVT U559 ( .A1(n922), .A2(n930), .Y(n932) );
  AND3X1_RVT U560 ( .A1(n1072), .A2(n890), .A3(n889), .Y(n955) );
  NAND3X0_RVT U561 ( .A1(n885), .A2(n889), .A3(n886), .Y(n939) );
  AND2X1_RVT U562 ( .A1(n903), .A2(n904), .Y(n902) );
  AO21X1_RVT U563 ( .A1(n899), .A2(n879), .A3(n900), .Y(n901) );
  NAND4X0_RVT U565 ( .A1(n961), .A2(n963), .A3(n960), .A4(n962), .Y(n907) );
  OR3X1_RVT U566 ( .A1(n912), .A2(n913), .A3(n914), .Y(n497) );
  NAND2X0_RVT U567 ( .A1(n1022), .A2(n1021), .Y(n912) );
  AND2X1_RVT U568 ( .A1(n971), .A2(n881), .Y(n913) );
  AND2X1_RVT U569 ( .A1(n972), .A2(n877), .Y(n914) );
  AND2X1_RVT U570 ( .A1(n1106), .A2(n854), .Y(n915) );
  AND2X1_RVT U571 ( .A1(n1023), .A2(n989), .Y(n916) );
  NAND2X0_RVT U572 ( .A1(n926), .A2(n1169), .Y(n917) );
  INVX1_RVT U575 ( .A(frac_mul[7]), .Y(n920) );
  INVX2_RVT U576 ( .A(n920), .Y(n921) );
  NOR2X0_HVT U577 ( .A1(c_zA), .A2(c_zB), .Y(n1084) );
  NAND3X0_RVT U578 ( .A1(n1012), .A2(n1065), .A3(n883), .Y(n1013) );
  AND2X1_HVT U579 ( .A1(n1158), .A2(n1041), .Y(n985) );
  OR2X1_HVT U582 ( .A1(n856), .A2(n855), .Y(n1083) );
  AND2X1_HVT U583 ( .A1(n985), .A2(n1040), .Y(n1156) );
  AND2X1_HVT U584 ( .A1(n985), .A2(n1157), .Y(n1159) );
  AND2X1_RVT U585 ( .A1(n1013), .A2(n1016), .Y(n924) );
  NAND2X0_RVT U586 ( .A1(n932), .A2(n1161), .Y(n925) );
  AND2X1_RVT U587 ( .A1(n1062), .A2(n1063), .Y(n927) );
  NAND4X0_RVT U588 ( .A1(n936), .A2(n1037), .A3(n1093), .A4(n934), .Y(n964) );
  NAND2X0_RVT U589 ( .A1(n935), .A2(n929), .Y(n934) );
  NAND2X0_RVT U590 ( .A1(n1057), .A2(n1058), .Y(n935) );
  NAND4X0_RVT U591 ( .A1(n937), .A2(n965), .A3(n1035), .A4(n1090), .Y(n936) );
  NAND2X0_RVT U592 ( .A1(n1161), .A2(n955), .Y(n937) );
  NAND2X0_RVT U593 ( .A1(n1161), .A2(n1060), .Y(n969) );
  OR3X1_RVT U595 ( .A1(n948), .A2(n893), .A3(n1161), .Y(n1021) );
  NAND3X0_RVT U596 ( .A1(n940), .A2(n1092), .A3(n939), .Y(n1016) );
  NAND2X0_RVT U597 ( .A1(n941), .A2(n884), .Y(n940) );
  NAND2X0_RVT U598 ( .A1(n942), .A2(n1068), .Y(n1025) );
  NAND2X0_RVT U599 ( .A1(n944), .A2(n943), .Y(n942) );
  NAND2X0_RVT U600 ( .A1(n906), .A2(n950), .Y(n943) );
  NAND2X0_RVT U601 ( .A1(n923), .A2(n1043), .Y(n944) );
  NAND2X0_RVT U602 ( .A1(n901), .A2(n872), .Y(n1020) );
  NAND2X0_RVT U603 ( .A1(n990), .A2(n1102), .Y(n991) );
  NAND2X0_RVT U604 ( .A1(n946), .A2(n945), .Y(n1102) );
  NAND2X0_RVT U606 ( .A1(n989), .A2(n988), .Y(n946) );
  AND2X1_RVT U607 ( .A1(n1017), .A2(n989), .Y(n990) );
  AND2X1_RVT U608 ( .A1(n1114), .A2(n886), .Y(n948) );
  AO22X1_RVT U610 ( .A1(n957), .A2(n1127), .A3(n1124), .A4(n953), .Y(n1138) );
  AND2X1_RVT U611 ( .A1(n957), .A2(n1165), .Y(n953) );
  NAND2X0_RVT U612 ( .A1(n1161), .A2(n954), .Y(n1026) );
  AND2X1_RVT U613 ( .A1(n1061), .A2(n882), .Y(n954) );
  OR2X1_RVT U614 ( .A1(n888), .A2(n902), .Y(n1018) );
  AND2X1_RVT U615 ( .A1(n1019), .A2(n1073), .Y(n956) );
  AND2X1_RVT U616 ( .A1(sfmult[6]), .A2(n993), .Y(n957) );
  AND2X1_RVT U617 ( .A1(n1143), .A2(sfmult[6]), .Y(n1124) );
  NAND2X0_RVT U618 ( .A1(n901), .A2(n1032), .Y(n967) );
  OA21X1_RVT U619 ( .A1(n958), .A2(n1160), .A3(n964), .Y(round) );
  NAND4X0_RVT U620 ( .A1(n963), .A2(n961), .A3(n960), .A4(n962), .Y(n1160) );
  AND2X1_RVT U621 ( .A1(n959), .A2(n968), .Y(n958) );
  NAND2X0_RVT U622 ( .A1(n967), .A2(n1033), .Y(n959) );
  NAND3X0_RVT U623 ( .A1(n1025), .A2(n894), .A3(n931), .Y(n961) );
  AND2X1_RVT U624 ( .A1(n1026), .A2(n1027), .Y(n962) );
  NAND3X0_RVT U625 ( .A1(n933), .A2(n887), .A3(n1146), .Y(n965) );
  AND3X1_RVT U626 ( .A1(n1069), .A2(n1070), .A3(n1071), .Y(n966) );
  NAND3X0_RVT U627 ( .A1(n969), .A2(n970), .A3(n925), .Y(n968) );
  AND3X1_RVT U628 ( .A1(n1076), .A2(n1077), .A3(n887), .Y(n970) );
  NAND3X0_RVT U630 ( .A1(n975), .A2(n1012), .A3(n974), .Y(n1015) );
  NAND3X0_RVT U631 ( .A1(n1034), .A2(n1059), .A3(n928), .Y(n974) );
  NAND2X0_RVT U632 ( .A1(n976), .A2(n1079), .Y(n975) );
  NAND3X0_RVT U636 ( .A1(n981), .A2(n980), .A3(n979), .Y(n982) );
  AND2X1_RVT U637 ( .A1(n984), .A2(n989), .Y(n1153) );
  AO22X1_RVT U638 ( .A1(n1081), .A2(restmp[1]), .A3(N81), .A4(n1082), .Y(P[0])
         );
  AND2X1_RVT U639 ( .A1(n1106), .A2(sfmult[1]), .Y(n996) );
  AO22X1_RVT U641 ( .A1(n1081), .A2(restmp[2]), .A3(N82), .A4(n1082), .Y(P[1])
         );
  AOI21X1_RVT U642 ( .A1(frac_mul[1]), .A2(n919), .A3(frac_mul[0]), .Y(n993)
         );
  OA21X1_RVT U643 ( .A1(n986), .A2(n990), .A3(n993), .Y(n1131) );
  NAND2X0_RVT U644 ( .A1(n1106), .A2(n854), .Y(n1128) );
  INVX1_RVT U645 ( .A(n1148), .Y(n1028) );
  NAND2X0_RVT U646 ( .A1(n1028), .A2(n1128), .Y(n987) );
  AO21X1_RVT U647 ( .A1(n987), .A2(sfmult[3]), .A3(n1140), .Y(n1129) );
  AO22X1_RVT U648 ( .A1(n1081), .A2(restmp[3]), .A3(N83), .A4(n1082), .Y(P[2])
         );
  AND2X1_RVT U649 ( .A1(n1169), .A2(n915), .Y(n995) );
  AO21X1_RVT U650 ( .A1(n853), .A2(n996), .A3(n995), .Y(n1126) );
  AND2X1_RVT U651 ( .A1(N88), .A2(n1082), .Y(P[7]) );
  OR2X1_RVT U652 ( .A1(n1143), .A2(n1028), .Y(n1116) );
  AO22X1_RVT U653 ( .A1(n1081), .A2(restmp[4]), .A3(N84), .A4(n1082), .Y(P[3])
         );
  MUX21X1_RVT U655 ( .A1(frac_mul[3]), .A2(frac_mul[4]), .S0(n919), .Y(n1023)
         );
  NAND3X0_RVT U656 ( .A1(n1135), .A2(n1023), .A3(n1130), .Y(n1137) );
  AND2X1_RVT U657 ( .A1(n991), .A2(sfmult[6]), .Y(n1139) );
  NAND3X0_RVT U658 ( .A1(n996), .A2(n1169), .A3(sfmult[5]), .Y(n1122) );
  NAND3X0_RVT U659 ( .A1(n992), .A2(n1140), .A3(n1153), .Y(n1110) );
  INVX1_RVT U660 ( .A(n1030), .Y(n1149) );
  NAND3X0_RVT U661 ( .A1(n1149), .A2(n1148), .A3(n1169), .Y(n1105) );
  NAND3X0_RVT U662 ( .A1(n1149), .A2(n1148), .A3(n1165), .Y(n1150) );
  INVX1_RVT U663 ( .A(n1127), .Y(n1152) );
  INVX1_RVT U664 ( .A(n1140), .Y(n1132) );
  AND2X1_RVT U665 ( .A1(n1017), .A2(n926), .Y(n1108) );
  AO22X1_RVT U666 ( .A1(n1081), .A2(restmp[6]), .A3(N86), .A4(n1082), .Y(P[5])
         );
  AO22X1_RVT U667 ( .A1(n1081), .A2(restmp[5]), .A3(N85), .A4(n1082), .Y(P[4])
         );
  NAND3X0_RVT U668 ( .A1(n997), .A2(n1148), .A3(n1153), .Y(n1111) );
  INVX1_RVT U669 ( .A(n997), .Y(n1154) );
  MUX21X1_RVT U670 ( .A1(n1029), .A2(n1152), .S0(n853), .Y(n998) );
  NAND3X0_RVT U671 ( .A1(N87), .A2(n1080), .A3(n1096), .Y(n1000) );
  NAND3X0_RVT U673 ( .A1(n1000), .A2(n1097), .A3(n999), .Y(P[6]) );
  NAND2X0_RVT U674 ( .A1(n1048), .A2(n1047), .Y(n1019) );
  AO22X1_RVT U675 ( .A1(n1002), .A2(n1019), .A3(n872), .A4(n1001), .Y(tmp[15])
         );
  NAND3X0_RVT U676 ( .A1(n1004), .A2(n949), .A3(n1003), .Y(tmp[14]) );
  AO22X1_RVT U677 ( .A1(n883), .A2(n1019), .A3(n1018), .A4(n1034), .Y(n1005)
         );
  NAND2X0_RVT U678 ( .A1(n1005), .A2(n881), .Y(n1007) );
  NAND2X0_RVT U679 ( .A1(n1046), .A2(n1045), .Y(n1036) );
  NAND3X0_RVT U680 ( .A1(n1036), .A2(n892), .A3(n880), .Y(n1006) );
  AND2X1_RVT U681 ( .A1(n1008), .A2(n1106), .Y(tmp[17]) );
  NAND2X0_RVT U683 ( .A1(n1011), .A2(n1010), .Y(tmp[16]) );
  NAND4X0_RVT U684 ( .A1(n1030), .A2(n926), .A3(sfmult[1]), .A4(n1169), .Y(
        n1103) );
  AND2X1_RVT U685 ( .A1(n894), .A2(n880), .Y(n1012) );
  AO21X1_RVT U686 ( .A1(n882), .A2(n1091), .A3(n949), .Y(n1014) );
  AND2X1_RVT U687 ( .A1(n916), .A2(n984), .Y(n1031) );
  NAND2X0_RVT U688 ( .A1(n1031), .A2(n1017), .Y(n1112) );
  NAND2X0_RVT U689 ( .A1(n891), .A2(n898), .Y(n1114) );
  AND3X1_RVT U690 ( .A1(n1056), .A2(n1055), .A3(n1054), .Y(n1022) );
  INVX0_RVT U691 ( .A(n1116), .Y(n1024) );
  NAND2X0_RVT U692 ( .A1(n926), .A2(n1024), .Y(n1117) );
  NAND2X0_RVT U693 ( .A1(n1030), .A2(n1132), .Y(n1119) );
  NAND2X0_RVT U694 ( .A1(n1122), .A2(n1128), .Y(n1123) );
  NAND4X0_RVT U695 ( .A1(n1053), .A2(n1052), .A3(n892), .A4(n1051), .Y(n1027)
         );
  NAND2X0_RVT U696 ( .A1(n1028), .A2(n1132), .Y(n1133) );
  NAND2X0_RVT U697 ( .A1(n891), .A2(n897), .Y(n1146) );
  NAND2X0_RVT U698 ( .A1(n1031), .A2(n1030), .Y(n1151) );
  AND3X1_RVT U699 ( .A1(n1086), .A2(n1087), .A3(n1088), .Y(n1033) );
  NAND3X0_RVT U700 ( .A1(n1036), .A2(n1085), .A3(n872), .Y(n1037) );
  decodePosit_1 d1 ( .in({A[7:6], p1_A, A[2:0]}), .sign(c_signA), .regime(
        c_regA), .exp(c_expA), .frac(c_fracA), .z(c_zA), .inf(n856), .IN0(clk), 
        .IN1(rst_n) );
  decodePosit_0 d2 ( .in({B[7:6], n1164, p1_B, B[2:0]}), .sign(n514), .regime(
        c_regB), .exp(c_expB), .frac(c_fracB), .z(c_zB), .inf(n855), .IN0(clk), 
        .IN1(rst_n) );
  positMul_DW_mult_uns_7 mult_x_1 ( .a({n846, n851, n849, n845}), .b({n847, 
        n848, n850, fracB_0_}), .product(frac_mul) );
  positMul_DW01_add_4 add_x_4 ( .A({N19, N18, N17, N16, N15, N14, N13}), .B({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n921}), .CI(1'b0), .SUM({sfmult, 
        n854}), .CO() );
  positMul_DW01_add_5 add_x_3 ( .A({regA[3], regA, n909, expA}), .B({regB[3], 
        regB, n911, expB}), .CI(1'b0), .SUM({N19, N18, N17, N16, N15, N14, N13}), .CO() );
  positMul_DW01_add_3 add_x_17 ( .A({tmp, n497, n907}), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, round}), .CI(1'b0), .SUM({restmp, restmp_0_}), 
        .CO(), .IN0(clk), .IN1(rst_n) );
  positMul_DW01_sub_1 sub_x_18 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({1'b0, restmp, restmp_0_}), .CI(1'b0), .DIFF({N88, 
        N87, N86, N85, N84, N83, N82, N81, SYNOPSYS_UNCONNECTED_1}), .CO() );
  INVX2_RVT U470 ( .A(sfmult[5]), .Y(n988) );
  OR2X2_RVT U497 ( .A1(sfmult[2]), .A2(sfmult[3]), .Y(n1143) );
  DFFASRX1_HVT R_63_RW_0 ( .D(n1040), .CLK(clk), .RSTB(1'b1), .SETB(rst_n), 
        .Q(n1095), .QN() );
  DFFASX2_HVT R_293 ( .D(sfmult[6]), .CLK(clk), .SETB(rst_n), .Q(n1078), .QN()
         );
  DFFASX2_HVT R_343_RW_0 ( .D(n1106), .CLK(clk), .SETB(rst_n), .Q(n1064), 
        .QN() );
  DFFASX2_HVT R_199 ( .D(n1107), .CLK(clk), .SETB(rst_n), .Q(n1091), .QN() );
  DFFARX1_RVT R_291_RW_0 ( .D(n1141), .CLK(clk), .RSTB(rst_n), .Q(n1079), .QN(
        n928) );
  DFFARX1_RVT fracB_reg_1_ ( .D(c_fracB[1]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n189) );
  INVX1_RVT U472 ( .A(n358), .Y(n849) );
  INVX1_RVT U476 ( .A(n180), .Y(n851) );
  OR2X1_RVT U471 ( .A1(n952), .A2(n878), .Y(n933) );
  INVX0_HVT U483 ( .A(n902), .Y(n941) );
  NAND2X0_HVT U682 ( .A1(n885), .A2(n1034), .Y(n1009) );
  NAND2X0_HVT U503 ( .A1(n1009), .A2(n872), .Y(n1011) );
  NOR4X1_RVT U635 ( .A1(frac_mul[2]), .A2(frac_mul[1]), .A3(frac_mul[0]), .A4(
        frac_mul[3]), .Y(n980) );
  MUX21X1_RVT U633 ( .A1(frac_mul[4]), .A2(frac_mul[5]), .S0(n919), .Y(n1140)
         );
  MUX21X1_RVT U477 ( .A1(frac_mul[1]), .A2(frac_mul[2]), .S0(n919), .Y(n1029)
         );
  INVX1_RVT U473 ( .A(n869), .Y(n926) );
  INVX0_HVT U482 ( .A(frac_mul[2]), .Y(n978) );
  INVX1_HVT U481 ( .A(frac_mul[3]), .Y(n977) );
  INVX0_HVT U480 ( .A(n1029), .Y(n986) );
  DFFARX1_RVT fracA_reg_2_ ( .D(c_fracA[2]), .CLK(clk), .RSTB(rst_n), .Q(), 
        .QN(n180) );
  INVX1_RVT U536 ( .A(sfmult[6]), .Y(n1008) );
  MUX21X1_RVT U634 ( .A1(frac_mul[6]), .A2(frac_mul[5]), .S0(n979), .Y(n1148)
         );
  INVX1_RVT U475 ( .A(sfmult[4]), .Y(n989) );
  INVX1_RVT U484 ( .A(c_fracB[0]), .Y(n1038) );
  INVX1_RVT U485 ( .A(n996), .Y(n1098) );
  INVX1_RVT U487 ( .A(n983), .Y(n984) );
  INVX1_RVT U490 ( .A(n1143), .Y(n1017) );
  INVX1_RVT U491 ( .A(frac_mul[4]), .Y(n981) );
  XOR2X1_HVT U492 ( .A1(n514), .A2(c_signA), .Y(n1042) );
  NAND2X0_RVT U493 ( .A1(n1017), .A2(n926), .Y(n1166) );
  INVX2_RVT U494 ( .A(n933), .Y(n1161) );
  NAND3X0_RVT U500 ( .A1(n951), .A2(n1008), .A3(sfmult[2]), .Y(n947) );
  INVX1_HVT U509 ( .A(n1023), .Y(n1118) );
  MUX21X1_RVT U535 ( .A1(n978), .A2(n977), .S0(n919), .Y(n1127) );
  INVX1_RVT U564 ( .A(n173), .Y(n848) );
  INVX0_RVT U573 ( .A(n1163), .Y(n1164) );
  NAND2X0_HVT U574 ( .A1(n966), .A2(n1161), .Y(n960) );
  NAND3X0_HVT U580 ( .A1(restmp[7]), .A2(n1080), .A3(n1095), .Y(n999) );
  OR2X1_RVT U581 ( .A1(sfmult[6]), .A2(sfmult[4]), .Y(n1130) );
  AND2X1_RVT U594 ( .A1(sfmult[6]), .A2(sfmult[4]), .Y(n1167) );
  NAND3X1_RVT U605 ( .A1(sfmult[6]), .A2(sfmult[4]), .A3(sfmult[5]), .Y(n945)
         );
  INVX1_RVT U609 ( .A(n989), .Y(n1165) );
  INVX0_HVT U629 ( .A(n995), .Y(n867) );
  NAND2X0_RVT U640 ( .A1(n1143), .A2(n1167), .Y(n1135) );
  NBUFFX2_HVT U654 ( .A(n921), .Y(n919) );
  NAND3X0_RVT U702 ( .A1(n862), .A2(n1124), .A3(n1165), .Y(n852) );
  NAND3X0_RVT U703 ( .A1(n998), .A2(n1154), .A3(n1153), .Y(n1155) );
  NBUFFX2_RVT U704 ( .A(n1107), .Y(n1169) );
endmodule

