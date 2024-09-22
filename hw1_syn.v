/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Mon Oct 23 20:01:56 2023
/////////////////////////////////////////////////////////////


module functional_unit_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module functional_unit_DW01_sub_0 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:1] carry;

  ADDFX1 U2_8 ( .A(A[8]), .B(n2), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX1 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX1 U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  XNOR3XL U1 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(DIFF[9]) );
  INVX2 U2 ( .A(B[0]), .Y(n9) );
  INVX2 U3 ( .A(B[2]), .Y(n8) );
  INVX2 U4 ( .A(B[3]), .Y(n7) );
  INVX2 U5 ( .A(B[4]), .Y(n6) );
  INVX2 U6 ( .A(B[1]), .Y(n10) );
  NAND2X2 U7 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2 U8 ( .A(A[0]), .Y(n1) );
  INVX2 U9 ( .A(B[5]), .Y(n5) );
  INVX2 U10 ( .A(B[7]), .Y(n3) );
  INVX2 U11 ( .A(B[6]), .Y(n4) );
  INVX2 U12 ( .A(B[8]), .Y(n2) );
  XNOR2X1 U13 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module functional_unit_DW01_sub_1 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:1] carry;

  ADDFX1 U2_8 ( .A(A[8]), .B(n2), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR3XL U1 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(DIFF[9]) );
  INVX2 U2 ( .A(A[0]), .Y(n1) );
  INVX2 U3 ( .A(B[1]), .Y(n9) );
  NAND2X2 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2 U5 ( .A(B[5]), .Y(n5) );
  INVX2 U6 ( .A(B[4]), .Y(n6) );
  INVX2 U7 ( .A(B[2]), .Y(n8) );
  INVX2 U8 ( .A(B[3]), .Y(n7) );
  INVX2 U9 ( .A(B[6]), .Y(n4) );
  INVX2 U10 ( .A(B[7]), .Y(n3) );
  INVX2 U11 ( .A(B[8]), .Y(n2) );
  XNOR2X1 U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U13 ( .A(B[0]), .Y(n10) );
endmodule


module functional_unit_DW_div_uns_0 ( a_14_, a_13_, a_12_, a_11_, a_10_, a_9_, 
        a_8_, a_7_, a_6_, a_5_, a_4_, a_3_, quotient_9_, quotient_8_, 
        quotient_7_, quotient_6_, quotient_5_, quotient_4_, quotient_3_, 
        quotient_2_, quotient_1_, quotient_0_ );
  input a_14_, a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, a_7_, a_6_, a_5_, a_4_,
         a_3_;
  output quotient_9_, quotient_8_, quotient_7_, quotient_6_, quotient_5_,
         quotient_4_, quotient_3_, quotient_2_, quotient_1_, quotient_0_;
  wire   n43, u_div_SumTmp_1__3_, u_div_SumTmp_2__2_, u_div_SumTmp_2__3_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__2_, u_div_SumTmp_5__3_,
         u_div_SumTmp_6__2_, u_div_SumTmp_6__3_, u_div_SumTmp_7__2_,
         u_div_SumTmp_7__3_, u_div_SumTmp_8__2_, u_div_SumTmp_8__3_,
         u_div_SumTmp_9__2_, u_div_SumTmp_9__3_, u_div_SumTmp_10__2_,
         u_div_SumTmp_10__3_, u_div_SumTmp_11__2_, u_div_SumTmp_11__3_,
         u_div_PartRem_1__3_, u_div_PartRem_1__4_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_3__1_,
         u_div_PartRem_3__2_, u_div_PartRem_3__3_, u_div_PartRem_3__4_,
         u_div_PartRem_4__1_, u_div_PartRem_4__2_, u_div_PartRem_4__3_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__3_, u_div_PartRem_5__4_, u_div_PartRem_6__1_,
         u_div_PartRem_6__2_, u_div_PartRem_6__3_, u_div_PartRem_6__4_,
         u_div_PartRem_7__1_, u_div_PartRem_7__2_, u_div_PartRem_7__3_,
         u_div_PartRem_7__4_, u_div_PartRem_8__1_, u_div_PartRem_8__2_,
         u_div_PartRem_8__3_, u_div_PartRem_8__4_, u_div_PartRem_9__1_,
         u_div_PartRem_9__2_, u_div_PartRem_9__3_, u_div_PartRem_9__4_,
         u_div_PartRem_10__1_, u_div_PartRem_10__2_, u_div_PartRem_10__3_,
         u_div_PartRem_10__4_, u_div_PartRem_11__1_, u_div_PartRem_11__2_,
         u_div_PartRem_11__3_, u_div_PartRem_11__4_, n2, n4, n6, n8, n10, n12,
         n14, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  MX2X1 u_div_u_mx_PartRem_0_11_2 ( .A(a_13_), .B(u_div_SumTmp_11__2_), .S0(
        n43), .Y(u_div_PartRem_11__3_) );
  MX2X1 u_div_u_mx_PartRem_0_5_0 ( .A(a_5_), .B(a_5_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__1_) );
  MX2X1 u_div_u_mx_PartRem_0_8_0 ( .A(a_8_), .B(a_8_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__1_) );
  MX2X1 u_div_u_mx_PartRem_0_6_0 ( .A(a_6_), .B(a_6_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__1_) );
  MX2X1 u_div_u_mx_PartRem_0_10_0 ( .A(a_10_), .B(a_10_), .S0(n19), .Y(
        u_div_PartRem_10__1_) );
  MX2X1 u_div_u_mx_PartRem_0_9_0 ( .A(a_9_), .B(a_9_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__1_) );
  MX2X1 u_div_u_mx_PartRem_0_11_0 ( .A(a_11_), .B(a_11_), .S0(n43), .Y(
        u_div_PartRem_11__1_) );
  MX2X1 u_div_u_mx_PartRem_0_7_0 ( .A(a_7_), .B(a_7_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__1_) );
  MX2X1 u_div_u_mx_PartRem_0_4_0 ( .A(a_4_), .B(a_4_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__1_) );
  MX2X1 u_div_u_mx_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(
        u_div_SumTmp_5__2_), .S0(quotient_5_), .Y(u_div_PartRem_5__3_) );
  MX2X1 u_div_u_mx_PartRem_0_10_2 ( .A(u_div_PartRem_11__2_), .B(
        u_div_SumTmp_10__2_), .S0(n19), .Y(u_div_PartRem_10__3_) );
  MX2X1 u_div_u_mx_PartRem_0_9_2 ( .A(u_div_PartRem_10__2_), .B(
        u_div_SumTmp_9__2_), .S0(quotient_9_), .Y(u_div_PartRem_9__3_) );
  MX2X1 u_div_u_mx_PartRem_0_6_2 ( .A(u_div_PartRem_7__2_), .B(
        u_div_SumTmp_6__2_), .S0(quotient_6_), .Y(u_div_PartRem_6__3_) );
  MX2X1 u_div_u_mx_PartRem_0_8_2 ( .A(u_div_PartRem_9__2_), .B(
        u_div_SumTmp_8__2_), .S0(quotient_8_), .Y(u_div_PartRem_8__3_) );
  MX2X1 u_div_u_mx_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(
        u_div_SumTmp_3__2_), .S0(quotient_3_), .Y(u_div_PartRem_3__3_) );
  MX2X1 u_div_u_mx_PartRem_0_7_2 ( .A(u_div_PartRem_8__2_), .B(
        u_div_SumTmp_7__2_), .S0(quotient_7_), .Y(u_div_PartRem_7__3_) );
  MX2X1 u_div_u_mx_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(
        u_div_SumTmp_4__2_), .S0(quotient_4_), .Y(u_div_PartRem_4__3_) );
  MX2X1 u_div_u_mx_PartRem_0_3_0 ( .A(a_3_), .B(a_3_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__1_) );
  MX2X1 u_div_u_mx_PartRem_0_11_3 ( .A(a_14_), .B(u_div_SumTmp_11__3_), .S0(
        n43), .Y(u_div_PartRem_11__4_) );
  MX2X1 u_div_u_mx_PartRem_0_10_3 ( .A(u_div_PartRem_11__3_), .B(
        u_div_SumTmp_10__3_), .S0(n19), .Y(u_div_PartRem_10__4_) );
  MX2X1 u_div_u_mx_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(
        u_div_SumTmp_2__2_), .S0(quotient_2_), .Y(u_div_PartRem_2__3_) );
  MX2X1 u_div_u_mx_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(
        u_div_SumTmp_3__3_), .S0(quotient_3_), .Y(u_div_PartRem_3__4_) );
  MX2X1 u_div_u_mx_PartRem_0_8_3 ( .A(u_div_PartRem_9__3_), .B(
        u_div_SumTmp_8__3_), .S0(quotient_8_), .Y(u_div_PartRem_8__4_) );
  MX2X1 u_div_u_mx_PartRem_0_7_3 ( .A(u_div_PartRem_8__3_), .B(
        u_div_SumTmp_7__3_), .S0(quotient_7_), .Y(u_div_PartRem_7__4_) );
  MX2X1 u_div_u_mx_PartRem_0_5_3 ( .A(u_div_PartRem_6__3_), .B(
        u_div_SumTmp_5__3_), .S0(quotient_5_), .Y(u_div_PartRem_5__4_) );
  MX2X1 u_div_u_mx_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(
        u_div_SumTmp_2__3_), .S0(quotient_2_), .Y(u_div_PartRem_2__4_) );
  MX2X1 u_div_u_mx_PartRem_0_9_3 ( .A(u_div_PartRem_10__3_), .B(
        u_div_SumTmp_9__3_), .S0(quotient_9_), .Y(u_div_PartRem_9__4_) );
  MX2X1 u_div_u_mx_PartRem_0_6_3 ( .A(u_div_PartRem_7__3_), .B(
        u_div_SumTmp_6__3_), .S0(quotient_6_), .Y(u_div_PartRem_6__4_) );
  MX2X1 u_div_u_mx_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(
        u_div_SumTmp_4__3_), .S0(quotient_4_), .Y(u_div_PartRem_4__4_) );
  MX2X1 u_div_u_mx_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n2), .S0(
        quotient_1_), .Y(u_div_PartRem_1__3_) );
  MX2X1 u_div_u_mx_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(
        u_div_SumTmp_1__3_), .S0(quotient_1_), .Y(u_div_PartRem_1__4_) );
  NAND2X2 U1 ( .A(quotient_1_), .B(u_div_PartRem_1__3_), .Y(n22) );
  INVX2 U2 ( .A(n34), .Y(quotient_7_) );
  INVX2 U3 ( .A(n23), .Y(quotient_1_) );
  INVX2 U4 ( .A(n30), .Y(quotient_5_) );
  INVX2 U5 ( .A(n36), .Y(quotient_8_) );
  INVX2 U6 ( .A(n26), .Y(quotient_3_) );
  INVX2 U7 ( .A(n24), .Y(quotient_2_) );
  INVX2 U8 ( .A(n32), .Y(quotient_6_) );
  INVX2 U9 ( .A(n28), .Y(quotient_4_) );
  INVX2 U10 ( .A(u_div_PartRem_2__2_), .Y(n2) );
  AOI2B1X1 U11 ( .A1N(n29), .A0(u_div_PartRem_5__3_), .B0(u_div_PartRem_5__4_), 
        .Y(n28) );
  AOI2B1X1 U12 ( .A1N(n33), .A0(u_div_PartRem_7__3_), .B0(u_div_PartRem_7__4_), 
        .Y(n32) );
  MXI2X1 U13 ( .A(n4), .B(u_div_PartRem_3__1_), .S0(quotient_2_), .Y(
        u_div_PartRem_2__2_) );
  INVX2 U14 ( .A(u_div_PartRem_3__1_), .Y(n4) );
  INVX2 U15 ( .A(n38), .Y(quotient_9_) );
  AOI2B1X1 U16 ( .A1N(n39), .A0(u_div_PartRem_10__3_), .B0(
        u_div_PartRem_10__4_), .Y(n38) );
  NOR2BX1 U17 ( .AN(a_14_), .B(n42), .Y(n43) );
  INVX2 U18 ( .A(n40), .Y(n19) );
  NOR2X2 U19 ( .A(u_div_PartRem_7__2_), .B(u_div_PartRem_7__1_), .Y(n33) );
  NOR2X2 U20 ( .A(u_div_PartRem_4__2_), .B(u_div_PartRem_4__1_), .Y(n27) );
  MXI2X1 U21 ( .A(n21), .B(a_12_), .S0(n43), .Y(u_div_PartRem_11__2_) );
  INVX2 U22 ( .A(a_12_), .Y(n21) );
  MXI2X1 U23 ( .A(n12), .B(u_div_PartRem_7__1_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__2_) );
  INVX2 U24 ( .A(u_div_PartRem_7__1_), .Y(n12) );
  MXI2X1 U25 ( .A(n8), .B(u_div_PartRem_5__1_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__2_) );
  INVX2 U26 ( .A(u_div_PartRem_5__1_), .Y(n8) );
  MXI2X1 U27 ( .A(n6), .B(u_div_PartRem_4__1_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__2_) );
  INVX2 U28 ( .A(u_div_PartRem_4__1_), .Y(n6) );
  MXI2X1 U29 ( .A(n14), .B(u_div_PartRem_8__1_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__2_) );
  INVX2 U30 ( .A(u_div_PartRem_8__1_), .Y(n14) );
  MXI2X1 U31 ( .A(n10), .B(u_div_PartRem_6__1_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__2_) );
  INVX2 U32 ( .A(u_div_PartRem_6__1_), .Y(n10) );
  MXI2X1 U33 ( .A(n20), .B(u_div_PartRem_11__1_), .S0(n19), .Y(
        u_div_PartRem_10__2_) );
  INVX2 U34 ( .A(u_div_PartRem_11__1_), .Y(n20) );
  MXI2X1 U35 ( .A(n18), .B(u_div_PartRem_10__1_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__2_) );
  INVX2 U36 ( .A(u_div_PartRem_10__1_), .Y(n18) );
  MXI2X1 U37 ( .A(n16), .B(u_div_PartRem_9__1_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__2_) );
  INVX2 U38 ( .A(u_div_PartRem_9__1_), .Y(n16) );
  XNOR2XL U39 ( .A(u_div_PartRem_4__1_), .B(u_div_PartRem_4__2_), .Y(
        u_div_SumTmp_3__2_) );
  XNOR2XL U40 ( .A(n33), .B(u_div_PartRem_7__3_), .Y(u_div_SumTmp_6__3_) );
  XNOR2XL U41 ( .A(u_div_PartRem_7__1_), .B(u_div_PartRem_7__2_), .Y(
        u_div_SumTmp_6__2_) );
  XNOR2XL U42 ( .A(n39), .B(u_div_PartRem_10__3_), .Y(u_div_SumTmp_9__3_) );
  NAND2BX1 U43 ( .AN(u_div_PartRem_1__4_), .B(n22), .Y(quotient_0_) );
  AOI2B1X1 U44 ( .A1N(n2), .A0(u_div_PartRem_2__3_), .B0(u_div_PartRem_2__4_), 
        .Y(n23) );
  XNOR2X1 U45 ( .A(n2), .B(u_div_PartRem_2__3_), .Y(u_div_SumTmp_1__3_) );
  NOR2X1 U46 ( .A(u_div_PartRem_3__2_), .B(u_div_PartRem_3__1_), .Y(n25) );
  AOI2B1X1 U47 ( .A1N(n25), .A0(u_div_PartRem_3__3_), .B0(u_div_PartRem_3__4_), 
        .Y(n24) );
  XNOR2X1 U48 ( .A(u_div_PartRem_3__1_), .B(u_div_PartRem_3__2_), .Y(
        u_div_SumTmp_2__2_) );
  XNOR2X1 U49 ( .A(n25), .B(u_div_PartRem_3__3_), .Y(u_div_SumTmp_2__3_) );
  AOI2B1X1 U50 ( .A1N(n27), .A0(u_div_PartRem_4__3_), .B0(u_div_PartRem_4__4_), 
        .Y(n26) );
  XNOR2X1 U51 ( .A(n27), .B(u_div_PartRem_4__3_), .Y(u_div_SumTmp_3__3_) );
  NOR2X1 U52 ( .A(u_div_PartRem_5__2_), .B(u_div_PartRem_5__1_), .Y(n29) );
  XNOR2X1 U53 ( .A(u_div_PartRem_5__1_), .B(u_div_PartRem_5__2_), .Y(
        u_div_SumTmp_4__2_) );
  XNOR2X1 U54 ( .A(n29), .B(u_div_PartRem_5__3_), .Y(u_div_SumTmp_4__3_) );
  NOR2X1 U55 ( .A(u_div_PartRem_6__2_), .B(u_div_PartRem_6__1_), .Y(n31) );
  AOI2B1X1 U56 ( .A1N(n31), .A0(u_div_PartRem_6__3_), .B0(u_div_PartRem_6__4_), 
        .Y(n30) );
  XNOR2X1 U57 ( .A(u_div_PartRem_6__1_), .B(u_div_PartRem_6__2_), .Y(
        u_div_SumTmp_5__2_) );
  XNOR2X1 U58 ( .A(n31), .B(u_div_PartRem_6__3_), .Y(u_div_SumTmp_5__3_) );
  NOR2X1 U59 ( .A(u_div_PartRem_8__2_), .B(u_div_PartRem_8__1_), .Y(n35) );
  AOI2B1X1 U60 ( .A1N(n35), .A0(u_div_PartRem_8__3_), .B0(u_div_PartRem_8__4_), 
        .Y(n34) );
  XNOR2X1 U61 ( .A(u_div_PartRem_8__1_), .B(u_div_PartRem_8__2_), .Y(
        u_div_SumTmp_7__2_) );
  XNOR2X1 U62 ( .A(n35), .B(u_div_PartRem_8__3_), .Y(u_div_SumTmp_7__3_) );
  NOR2X1 U63 ( .A(u_div_PartRem_9__2_), .B(u_div_PartRem_9__1_), .Y(n37) );
  AOI2B1X1 U64 ( .A1N(n37), .A0(u_div_PartRem_9__3_), .B0(u_div_PartRem_9__4_), 
        .Y(n36) );
  XNOR2X1 U65 ( .A(u_div_PartRem_9__1_), .B(u_div_PartRem_9__2_), .Y(
        u_div_SumTmp_8__2_) );
  XNOR2X1 U66 ( .A(n37), .B(u_div_PartRem_9__3_), .Y(u_div_SumTmp_8__3_) );
  NOR2X1 U67 ( .A(u_div_PartRem_10__2_), .B(u_div_PartRem_10__1_), .Y(n39) );
  XNOR2X1 U68 ( .A(u_div_PartRem_10__1_), .B(u_div_PartRem_10__2_), .Y(
        u_div_SumTmp_9__2_) );
  NOR2X1 U69 ( .A(u_div_PartRem_11__2_), .B(u_div_PartRem_11__1_), .Y(n41) );
  AOI2B1X1 U70 ( .A1N(n41), .A0(u_div_PartRem_11__3_), .B0(
        u_div_PartRem_11__4_), .Y(n40) );
  XNOR2X1 U71 ( .A(u_div_PartRem_11__1_), .B(u_div_PartRem_11__2_), .Y(
        u_div_SumTmp_10__2_) );
  XNOR2X1 U72 ( .A(n41), .B(u_div_PartRem_11__3_), .Y(u_div_SumTmp_10__3_) );
  NOR2X1 U73 ( .A(a_13_), .B(a_12_), .Y(n42) );
  XNOR2X1 U74 ( .A(a_12_), .B(a_13_), .Y(u_div_SumTmp_11__2_) );
  XNOR2X1 U75 ( .A(n42), .B(a_14_), .Y(u_div_SumTmp_11__3_) );
endmodule


module functional_unit_DW01_sub_3 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:1] carry;

  ADDFX1 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3XL U2_9 ( .A(A[9]), .B(n2), .C(carry[9]), .Y(DIFF[9]) );
  INVX2 U1 ( .A(A[0]), .Y(n1) );
  XNOR2XL U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[9]), .Y(n2) );
  INVX2 U4 ( .A(B[1]), .Y(n10) );
  NAND2X2 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2 U6 ( .A(B[3]), .Y(n8) );
  INVX2 U7 ( .A(B[2]), .Y(n9) );
  INVX2 U8 ( .A(B[6]), .Y(n5) );
  INVX2 U9 ( .A(B[7]), .Y(n4) );
  INVX2 U10 ( .A(B[5]), .Y(n6) );
  INVX2 U11 ( .A(B[4]), .Y(n7) );
  INVX2 U12 ( .A(B[8]), .Y(n3) );
  INVX2 U13 ( .A(B[0]), .Y(n11) );
endmodule


module functional_unit_DW01_sub_5 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:1] carry;

  ADDFX1 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX1 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  XOR3XL U2_9 ( .A(A[9]), .B(n2), .C(carry[9]), .Y(DIFF[9]) );
  INVX2 U1 ( .A(A[0]), .Y(n1) );
  XNOR2XL U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[9]), .Y(n2) );
  INVX2 U4 ( .A(B[6]), .Y(n5) );
  INVX2 U5 ( .A(B[2]), .Y(n9) );
  INVX2 U6 ( .A(B[7]), .Y(n4) );
  INVX2 U7 ( .A(B[5]), .Y(n6) );
  INVX2 U8 ( .A(B[3]), .Y(n8) );
  INVX2 U9 ( .A(B[4]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n3) );
  INVX2 U11 ( .A(B[1]), .Y(n10) );
  NAND2X2 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2 U13 ( .A(B[0]), .Y(n11) );
endmodule


module functional_unit_DW01_sub_6 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:1] carry;

  ADDFX1 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX1 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX1 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX1 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  XOR3XL U2_9 ( .A(A[9]), .B(n2), .C(carry[9]), .Y(DIFF[9]) );
  INVX2 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[9]), .Y(n2) );
  INVX2 U4 ( .A(B[2]), .Y(n9) );
  INVX2 U5 ( .A(B[3]), .Y(n8) );
  INVX2 U6 ( .A(B[4]), .Y(n7) );
  INVX2 U7 ( .A(B[5]), .Y(n6) );
  INVX2 U8 ( .A(B[8]), .Y(n3) );
  INVX2 U9 ( .A(B[7]), .Y(n4) );
  INVX2 U10 ( .A(B[6]), .Y(n5) );
  INVX2 U11 ( .A(B[1]), .Y(n10) );
  NAND2X2 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2 U13 ( .A(B[0]), .Y(n11) );
endmodule


module functional_unit_DW_div_uns_2 ( a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, 
        a_7_, a_6_, a_5_, a_4_, a_3_, quotient_9_, quotient_8_, quotient_7_, 
        quotient_6_, quotient_5_, quotient_4_, quotient_3_, quotient_2_, 
        quotient_1_, quotient_0_ );
  input a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, a_7_, a_6_, a_5_, a_4_, a_3_;
  output quotient_9_, quotient_8_, quotient_7_, quotient_6_, quotient_5_,
         quotient_4_, quotient_3_, quotient_2_, quotient_1_, quotient_0_;
  wire   n36, u_div_SumTmp_1__3_, u_div_SumTmp_2__2_, u_div_SumTmp_2__3_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__2_, u_div_SumTmp_5__3_,
         u_div_SumTmp_6__2_, u_div_SumTmp_6__3_, u_div_SumTmp_7__2_,
         u_div_SumTmp_7__3_, u_div_SumTmp_8__2_, u_div_SumTmp_8__3_,
         u_div_SumTmp_9__2_, u_div_SumTmp_9__3_, u_div_SumTmp_10__2_,
         u_div_SumTmp_10__3_, u_div_PartRem_1__3_, u_div_PartRem_1__4_,
         u_div_PartRem_2__2_, u_div_PartRem_2__3_, u_div_PartRem_2__4_,
         u_div_PartRem_3__1_, u_div_PartRem_3__2_, u_div_PartRem_3__3_,
         u_div_PartRem_3__4_, u_div_PartRem_4__1_, u_div_PartRem_4__2_,
         u_div_PartRem_4__3_, u_div_PartRem_4__4_, u_div_PartRem_5__1_,
         u_div_PartRem_5__2_, u_div_PartRem_5__3_, u_div_PartRem_5__4_,
         u_div_PartRem_6__1_, u_div_PartRem_6__2_, u_div_PartRem_6__3_,
         u_div_PartRem_6__4_, u_div_PartRem_7__1_, u_div_PartRem_7__2_,
         u_div_PartRem_7__3_, u_div_PartRem_7__4_, u_div_PartRem_8__1_,
         u_div_PartRem_8__2_, u_div_PartRem_8__3_, u_div_PartRem_8__4_,
         u_div_PartRem_9__1_, u_div_PartRem_9__2_, u_div_PartRem_9__3_,
         u_div_PartRem_9__4_, u_div_PartRem_10__1_, u_div_PartRem_10__2_,
         u_div_PartRem_10__3_, u_div_PartRem_10__4_, n2, n3, n4, n6, n8, n9,
         n11, n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35;

  MX2X1 u_div_u_mx_PartRem_0_4_0 ( .A(a_4_), .B(a_4_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__1_) );
  MX2X1 u_div_u_mx_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(
        u_div_SumTmp_3__2_), .S0(quotient_3_), .Y(u_div_PartRem_3__3_) );
  MX2X1 u_div_u_mx_PartRem_0_3_0 ( .A(a_3_), .B(a_3_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__1_) );
  MX2X1 u_div_u_mx_PartRem_0_6_0 ( .A(a_6_), .B(a_6_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__1_) );
  MX2X1 u_div_u_mx_PartRem_0_8_0 ( .A(a_8_), .B(a_8_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__1_) );
  MX2X1 u_div_u_mx_PartRem_0_9_0 ( .A(a_9_), .B(a_9_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__1_) );
  MX2X1 u_div_u_mx_PartRem_0_7_0 ( .A(a_7_), .B(a_7_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__1_) );
  MX2X1 u_div_u_mx_PartRem_0_10_0 ( .A(a_10_), .B(a_10_), .S0(n36), .Y(
        u_div_PartRem_10__1_) );
  MX2X1 u_div_u_mx_PartRem_0_5_0 ( .A(a_5_), .B(a_5_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__1_) );
  MX2X1 u_div_u_mx_PartRem_0_9_2 ( .A(u_div_PartRem_10__2_), .B(
        u_div_SumTmp_9__2_), .S0(quotient_9_), .Y(u_div_PartRem_9__3_) );
  MX2X1 u_div_u_mx_PartRem_0_8_2 ( .A(u_div_PartRem_9__2_), .B(
        u_div_SumTmp_8__2_), .S0(quotient_8_), .Y(u_div_PartRem_8__3_) );
  MX2X1 u_div_u_mx_PartRem_0_6_2 ( .A(u_div_PartRem_7__2_), .B(
        u_div_SumTmp_6__2_), .S0(quotient_6_), .Y(u_div_PartRem_6__3_) );
  MX2X1 u_div_u_mx_PartRem_0_10_2 ( .A(a_12_), .B(u_div_SumTmp_10__2_), .S0(
        n36), .Y(u_div_PartRem_10__3_) );
  MX2X1 u_div_u_mx_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(
        u_div_SumTmp_4__2_), .S0(quotient_4_), .Y(u_div_PartRem_4__3_) );
  MX2X1 u_div_u_mx_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(
        u_div_SumTmp_5__2_), .S0(quotient_5_), .Y(u_div_PartRem_5__3_) );
  MX2X1 u_div_u_mx_PartRem_0_7_2 ( .A(u_div_PartRem_8__2_), .B(
        u_div_SumTmp_7__2_), .S0(quotient_7_), .Y(u_div_PartRem_7__3_) );
  MX2X1 u_div_u_mx_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(
        u_div_SumTmp_2__2_), .S0(quotient_2_), .Y(u_div_PartRem_2__3_) );
  MX2X1 u_div_u_mx_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(
        u_div_SumTmp_2__3_), .S0(quotient_2_), .Y(u_div_PartRem_2__4_) );
  MX2X1 u_div_u_mx_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(
        u_div_SumTmp_4__3_), .S0(quotient_4_), .Y(u_div_PartRem_4__4_) );
  MX2X1 u_div_u_mx_PartRem_0_10_3 ( .A(a_13_), .B(u_div_SumTmp_10__3_), .S0(
        n36), .Y(u_div_PartRem_10__4_) );
  MX2X1 u_div_u_mx_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(
        u_div_SumTmp_3__3_), .S0(quotient_3_), .Y(u_div_PartRem_3__4_) );
  MX2X1 u_div_u_mx_PartRem_0_5_3 ( .A(u_div_PartRem_6__3_), .B(
        u_div_SumTmp_5__3_), .S0(quotient_5_), .Y(u_div_PartRem_5__4_) );
  MX2X1 u_div_u_mx_PartRem_0_9_3 ( .A(u_div_PartRem_10__3_), .B(
        u_div_SumTmp_9__3_), .S0(quotient_9_), .Y(u_div_PartRem_9__4_) );
  MX2X1 u_div_u_mx_PartRem_0_7_3 ( .A(u_div_PartRem_8__3_), .B(
        u_div_SumTmp_7__3_), .S0(quotient_7_), .Y(u_div_PartRem_7__4_) );
  MX2X1 u_div_u_mx_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n2), .S0(
        quotient_1_), .Y(u_div_PartRem_1__3_) );
  MX2X1 u_div_u_mx_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(
        u_div_SumTmp_1__3_), .S0(quotient_1_), .Y(u_div_PartRem_1__4_) );
  MX2X1 u_div_u_mx_PartRem_0_6_3 ( .A(u_div_PartRem_7__3_), .B(
        u_div_SumTmp_6__3_), .S0(quotient_6_), .Y(u_div_PartRem_6__4_) );
  MX2X1 u_div_u_mx_PartRem_0_8_3 ( .A(u_div_PartRem_9__3_), .B(
        u_div_SumTmp_8__3_), .S0(quotient_8_), .Y(u_div_PartRem_8__4_) );
  INVX2 U1 ( .A(n29), .Y(quotient_7_) );
  INVX2 U2 ( .A(n25), .Y(quotient_5_) );
  INVX2 U3 ( .A(n31), .Y(quotient_8_) );
  INVX2 U4 ( .A(n23), .Y(quotient_4_) );
  NAND2X2 U5 ( .A(quotient_1_), .B(u_div_PartRem_1__3_), .Y(n17) );
  AOI2B1X1 U6 ( .A1N(n28), .A0(u_div_PartRem_7__3_), .B0(u_div_PartRem_7__4_), 
        .Y(n27) );
  AOI2B1X1 U7 ( .A1N(n32), .A0(u_div_PartRem_9__3_), .B0(u_div_PartRem_9__4_), 
        .Y(n31) );
  AOI2B1X1 U8 ( .A1N(n24), .A0(u_div_PartRem_5__3_), .B0(u_div_PartRem_5__4_), 
        .Y(n23) );
  INVX2 U9 ( .A(n18), .Y(quotient_1_) );
  INVX2 U10 ( .A(n33), .Y(quotient_9_) );
  INVX2 U11 ( .A(u_div_PartRem_2__2_), .Y(n2) );
  AOI2B1X1 U12 ( .A1N(n34), .A0(u_div_PartRem_10__3_), .B0(
        u_div_PartRem_10__4_), .Y(n33) );
  AOI2B1X1 U13 ( .A1N(n22), .A0(u_div_PartRem_4__3_), .B0(u_div_PartRem_4__4_), 
        .Y(n21) );
  AOI2B1X1 U14 ( .A1N(n2), .A0(u_div_PartRem_2__3_), .B0(u_div_PartRem_2__4_), 
        .Y(n18) );
  MXI2X1 U15 ( .A(n3), .B(u_div_PartRem_3__1_), .S0(quotient_2_), .Y(
        u_div_PartRem_2__2_) );
  INVX2 U16 ( .A(u_div_PartRem_3__1_), .Y(n3) );
  NOR2X2 U17 ( .A(u_div_PartRem_10__2_), .B(u_div_PartRem_10__1_), .Y(n34) );
  NOR2X2 U18 ( .A(u_div_PartRem_7__2_), .B(u_div_PartRem_7__1_), .Y(n28) );
  NOR2X2 U19 ( .A(u_div_PartRem_5__2_), .B(u_div_PartRem_5__1_), .Y(n24) );
  MXI2X1 U20 ( .A(n8), .B(u_div_PartRem_6__1_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__2_) );
  INVX2 U21 ( .A(u_div_PartRem_6__1_), .Y(n8) );
  MXI2X1 U22 ( .A(n6), .B(u_div_PartRem_5__1_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__2_) );
  INVX2 U23 ( .A(u_div_PartRem_5__1_), .Y(n6) );
  MXI2X1 U24 ( .A(n13), .B(u_div_PartRem_9__1_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__2_) );
  INVX2 U25 ( .A(u_div_PartRem_9__1_), .Y(n13) );
  MXI2X1 U26 ( .A(n9), .B(u_div_PartRem_7__1_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__2_) );
  INVX2 U27 ( .A(u_div_PartRem_7__1_), .Y(n9) );
  MXI2X1 U28 ( .A(n15), .B(u_div_PartRem_10__1_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__2_) );
  INVX2 U29 ( .A(u_div_PartRem_10__1_), .Y(n15) );
  MXI2X1 U30 ( .A(n16), .B(a_11_), .S0(n36), .Y(u_div_PartRem_10__2_) );
  INVX2 U31 ( .A(a_11_), .Y(n16) );
  MXI2X1 U32 ( .A(n11), .B(u_div_PartRem_8__1_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__2_) );
  INVX2 U33 ( .A(u_div_PartRem_8__1_), .Y(n11) );
  NOR2X2 U34 ( .A(u_div_PartRem_4__2_), .B(u_div_PartRem_4__1_), .Y(n22) );
  MXI2X1 U35 ( .A(n4), .B(u_div_PartRem_4__1_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__2_) );
  INVX2 U36 ( .A(u_div_PartRem_4__1_), .Y(n4) );
  NOR2X2 U37 ( .A(u_div_PartRem_9__2_), .B(u_div_PartRem_9__1_), .Y(n32) );
  NAND2BX1 U38 ( .AN(u_div_PartRem_1__4_), .B(n17), .Y(quotient_0_) );
  XNOR2X1 U39 ( .A(n2), .B(u_div_PartRem_2__3_), .Y(u_div_SumTmp_1__3_) );
  NOR2X1 U40 ( .A(u_div_PartRem_3__2_), .B(u_div_PartRem_3__1_), .Y(n20) );
  AOI2B1X1 U41 ( .A1N(n20), .A0(u_div_PartRem_3__3_), .B0(u_div_PartRem_3__4_), 
        .Y(n19) );
  CLKINVX1 U42 ( .A(n19), .Y(quotient_2_) );
  XNOR2X1 U43 ( .A(u_div_PartRem_3__1_), .B(u_div_PartRem_3__2_), .Y(
        u_div_SumTmp_2__2_) );
  XNOR2X1 U44 ( .A(n20), .B(u_div_PartRem_3__3_), .Y(u_div_SumTmp_2__3_) );
  CLKINVX1 U45 ( .A(n21), .Y(quotient_3_) );
  XNOR2X1 U46 ( .A(u_div_PartRem_4__1_), .B(u_div_PartRem_4__2_), .Y(
        u_div_SumTmp_3__2_) );
  XNOR2X1 U47 ( .A(n22), .B(u_div_PartRem_4__3_), .Y(u_div_SumTmp_3__3_) );
  XNOR2X1 U48 ( .A(u_div_PartRem_5__1_), .B(u_div_PartRem_5__2_), .Y(
        u_div_SumTmp_4__2_) );
  XNOR2X1 U49 ( .A(n24), .B(u_div_PartRem_5__3_), .Y(u_div_SumTmp_4__3_) );
  NOR2X1 U50 ( .A(u_div_PartRem_6__2_), .B(u_div_PartRem_6__1_), .Y(n26) );
  AOI2B1X1 U51 ( .A1N(n26), .A0(u_div_PartRem_6__3_), .B0(u_div_PartRem_6__4_), 
        .Y(n25) );
  XNOR2X1 U52 ( .A(u_div_PartRem_6__1_), .B(u_div_PartRem_6__2_), .Y(
        u_div_SumTmp_5__2_) );
  XNOR2X1 U53 ( .A(n26), .B(u_div_PartRem_6__3_), .Y(u_div_SumTmp_5__3_) );
  CLKINVX1 U54 ( .A(n27), .Y(quotient_6_) );
  XNOR2X1 U55 ( .A(u_div_PartRem_7__1_), .B(u_div_PartRem_7__2_), .Y(
        u_div_SumTmp_6__2_) );
  XNOR2X1 U56 ( .A(n28), .B(u_div_PartRem_7__3_), .Y(u_div_SumTmp_6__3_) );
  NOR2X1 U57 ( .A(u_div_PartRem_8__2_), .B(u_div_PartRem_8__1_), .Y(n30) );
  AOI2B1X1 U58 ( .A1N(n30), .A0(u_div_PartRem_8__3_), .B0(u_div_PartRem_8__4_), 
        .Y(n29) );
  XNOR2X1 U59 ( .A(u_div_PartRem_8__1_), .B(u_div_PartRem_8__2_), .Y(
        u_div_SumTmp_7__2_) );
  XNOR2X1 U60 ( .A(n30), .B(u_div_PartRem_8__3_), .Y(u_div_SumTmp_7__3_) );
  XNOR2X1 U61 ( .A(u_div_PartRem_9__1_), .B(u_div_PartRem_9__2_), .Y(
        u_div_SumTmp_8__2_) );
  XNOR2X1 U62 ( .A(n32), .B(u_div_PartRem_9__3_), .Y(u_div_SumTmp_8__3_) );
  XNOR2X1 U63 ( .A(u_div_PartRem_10__1_), .B(u_div_PartRem_10__2_), .Y(
        u_div_SumTmp_9__2_) );
  XNOR2X1 U64 ( .A(n34), .B(u_div_PartRem_10__3_), .Y(u_div_SumTmp_9__3_) );
  NOR2X1 U65 ( .A(a_12_), .B(a_11_), .Y(n35) );
  NOR2BX1 U66 ( .AN(a_13_), .B(n35), .Y(n36) );
  XNOR2X1 U67 ( .A(a_11_), .B(a_12_), .Y(u_div_SumTmp_10__2_) );
  XNOR2X1 U68 ( .A(n35), .B(a_13_), .Y(u_div_SumTmp_10__3_) );
endmodule


module functional_unit_DW_div_uns_3 ( a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, 
        a_7_, a_6_, a_5_, a_4_, a_3_, quotient_9_, quotient_8_, quotient_7_, 
        quotient_6_, quotient_5_, quotient_4_, quotient_3_, quotient_2_, 
        quotient_1_, quotient_0_ );
  input a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, a_7_, a_6_, a_5_, a_4_, a_3_;
  output quotient_9_, quotient_8_, quotient_7_, quotient_6_, quotient_5_,
         quotient_4_, quotient_3_, quotient_2_, quotient_1_, quotient_0_;
  wire   n37, u_div_SumTmp_1__3_, u_div_SumTmp_2__2_, u_div_SumTmp_2__3_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__2_, u_div_SumTmp_5__3_,
         u_div_SumTmp_6__2_, u_div_SumTmp_6__3_, u_div_SumTmp_7__2_,
         u_div_SumTmp_7__3_, u_div_SumTmp_8__2_, u_div_SumTmp_8__3_,
         u_div_SumTmp_9__2_, u_div_SumTmp_9__3_, u_div_SumTmp_10__2_,
         u_div_SumTmp_10__3_, u_div_PartRem_1__3_, u_div_PartRem_1__4_,
         u_div_PartRem_2__2_, u_div_PartRem_2__3_, u_div_PartRem_2__4_,
         u_div_PartRem_3__1_, u_div_PartRem_3__2_, u_div_PartRem_3__3_,
         u_div_PartRem_3__4_, u_div_PartRem_4__1_, u_div_PartRem_4__2_,
         u_div_PartRem_4__3_, u_div_PartRem_4__4_, u_div_PartRem_5__1_,
         u_div_PartRem_5__2_, u_div_PartRem_5__3_, u_div_PartRem_5__4_,
         u_div_PartRem_6__1_, u_div_PartRem_6__2_, u_div_PartRem_6__3_,
         u_div_PartRem_6__4_, u_div_PartRem_7__1_, u_div_PartRem_7__2_,
         u_div_PartRem_7__3_, u_div_PartRem_7__4_, u_div_PartRem_8__1_,
         u_div_PartRem_8__2_, u_div_PartRem_8__3_, u_div_PartRem_8__4_,
         u_div_PartRem_9__1_, u_div_PartRem_9__2_, u_div_PartRem_9__3_,
         u_div_PartRem_9__4_, u_div_PartRem_10__1_, u_div_PartRem_10__2_,
         u_div_PartRem_10__3_, u_div_PartRem_10__4_, n2, n3, n5, n7, n8, n10,
         n12, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36;

  MX2X1 u_div_u_mx_PartRem_0_10_2 ( .A(a_12_), .B(u_div_SumTmp_10__2_), .S0(
        n37), .Y(u_div_PartRem_10__3_) );
  MX2X1 u_div_u_mx_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(
        u_div_SumTmp_4__2_), .S0(quotient_4_), .Y(u_div_PartRem_4__3_) );
  MX2X1 u_div_u_mx_PartRem_0_6_2 ( .A(u_div_PartRem_7__2_), .B(
        u_div_SumTmp_6__2_), .S0(quotient_6_), .Y(u_div_PartRem_6__3_) );
  MX2X1 u_div_u_mx_PartRem_0_9_2 ( .A(u_div_PartRem_10__2_), .B(
        u_div_SumTmp_9__2_), .S0(quotient_9_), .Y(u_div_PartRem_9__3_) );
  MX2X1 u_div_u_mx_PartRem_0_8_2 ( .A(u_div_PartRem_9__2_), .B(
        u_div_SumTmp_8__2_), .S0(quotient_8_), .Y(u_div_PartRem_8__3_) );
  MX2X1 u_div_u_mx_PartRem_0_7_2 ( .A(u_div_PartRem_8__2_), .B(
        u_div_SumTmp_7__2_), .S0(quotient_7_), .Y(u_div_PartRem_7__3_) );
  MX2X1 u_div_u_mx_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(
        u_div_SumTmp_5__2_), .S0(quotient_5_), .Y(u_div_PartRem_5__3_) );
  MX2X1 u_div_u_mx_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(
        u_div_SumTmp_2__2_), .S0(quotient_2_), .Y(u_div_PartRem_2__3_) );
  MX2X1 u_div_u_mx_PartRem_0_10_3 ( .A(a_13_), .B(u_div_SumTmp_10__3_), .S0(
        n37), .Y(u_div_PartRem_10__4_) );
  MX2X1 u_div_u_mx_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(
        u_div_SumTmp_3__2_), .S0(quotient_3_), .Y(u_div_PartRem_3__3_) );
  MX2X1 u_div_u_mx_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(
        u_div_SumTmp_2__3_), .S0(quotient_2_), .Y(u_div_PartRem_2__4_) );
  MX2X1 u_div_u_mx_PartRem_0_9_3 ( .A(u_div_PartRem_10__3_), .B(
        u_div_SumTmp_9__3_), .S0(quotient_9_), .Y(u_div_PartRem_9__4_) );
  MX2X1 u_div_u_mx_PartRem_0_8_3 ( .A(u_div_PartRem_9__3_), .B(
        u_div_SumTmp_8__3_), .S0(quotient_8_), .Y(u_div_PartRem_8__4_) );
  MX2X1 u_div_u_mx_PartRem_0_6_3 ( .A(u_div_PartRem_7__3_), .B(
        u_div_SumTmp_6__3_), .S0(quotient_6_), .Y(u_div_PartRem_6__4_) );
  MX2X1 u_div_u_mx_PartRem_0_7_3 ( .A(u_div_PartRem_8__3_), .B(
        u_div_SumTmp_7__3_), .S0(quotient_7_), .Y(u_div_PartRem_7__4_) );
  MX2X1 u_div_u_mx_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(
        u_div_SumTmp_3__3_), .S0(quotient_3_), .Y(u_div_PartRem_3__4_) );
  MX2X1 u_div_u_mx_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(
        u_div_SumTmp_4__3_), .S0(quotient_4_), .Y(u_div_PartRem_4__4_) );
  MX2X1 u_div_u_mx_PartRem_0_5_3 ( .A(u_div_PartRem_6__3_), .B(
        u_div_SumTmp_5__3_), .S0(quotient_5_), .Y(u_div_PartRem_5__4_) );
  MX2X1 u_div_u_mx_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n2), .S0(
        quotient_1_), .Y(u_div_PartRem_1__3_) );
  MX2X1 u_div_u_mx_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(
        u_div_SumTmp_1__3_), .S0(quotient_1_), .Y(u_div_PartRem_1__4_) );
  MX2X1 u_div_u_mx_PartRem_0_9_0 ( .A(a_9_), .B(a_9_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__1_) );
  MX2X1 u_div_u_mx_PartRem_0_8_0 ( .A(a_8_), .B(a_8_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__1_) );
  MX2X1 u_div_u_mx_PartRem_0_6_0 ( .A(a_6_), .B(a_6_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__1_) );
  MX2X1 u_div_u_mx_PartRem_0_5_0 ( .A(a_5_), .B(a_5_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__1_) );
  MX2X1 u_div_u_mx_PartRem_0_3_0 ( .A(a_3_), .B(a_3_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__1_) );
  MX2X1 u_div_u_mx_PartRem_0_7_0 ( .A(a_7_), .B(a_7_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__1_) );
  MX2X1 u_div_u_mx_PartRem_0_10_0 ( .A(a_10_), .B(a_10_), .S0(n37), .Y(
        u_div_PartRem_10__1_) );
  MX2X1 u_div_u_mx_PartRem_0_4_0 ( .A(a_4_), .B(a_4_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__1_) );
  INVX2 U1 ( .A(n19), .Y(quotient_1_) );
  INVX2 U2 ( .A(n24), .Y(quotient_4_) );
  INVX2 U3 ( .A(n22), .Y(quotient_3_) );
  INVX2 U4 ( .A(n28), .Y(quotient_6_) );
  INVX2 U5 ( .A(n30), .Y(quotient_7_) );
  INVX2 U6 ( .A(n32), .Y(quotient_8_) );
  MXI2X1 U7 ( .A(n5), .B(u_div_PartRem_4__1_), .S0(quotient_3_), .Y(
        u_div_PartRem_3__2_) );
  INVX2 U8 ( .A(u_div_PartRem_4__1_), .Y(n5) );
  NAND2X2 U9 ( .A(quotient_1_), .B(u_div_PartRem_1__3_), .Y(n18) );
  INVX2 U10 ( .A(n34), .Y(quotient_9_) );
  INVX2 U11 ( .A(u_div_PartRem_2__2_), .Y(n2) );
  MXI2X1 U12 ( .A(n3), .B(u_div_PartRem_3__1_), .S0(quotient_2_), .Y(
        u_div_PartRem_2__2_) );
  INVX2 U13 ( .A(u_div_PartRem_3__1_), .Y(n3) );
  MXI2X1 U14 ( .A(n8), .B(u_div_PartRem_6__1_), .S0(quotient_5_), .Y(
        u_div_PartRem_5__2_) );
  INVX2 U15 ( .A(u_div_PartRem_6__1_), .Y(n8) );
  MXI2X1 U16 ( .A(n12), .B(u_div_PartRem_8__1_), .S0(quotient_7_), .Y(
        u_div_PartRem_7__2_) );
  INVX2 U17 ( .A(u_div_PartRem_8__1_), .Y(n12) );
  MXI2X1 U18 ( .A(n14), .B(u_div_PartRem_9__1_), .S0(quotient_8_), .Y(
        u_div_PartRem_8__2_) );
  INVX2 U19 ( .A(u_div_PartRem_9__1_), .Y(n14) );
  MXI2X1 U20 ( .A(n16), .B(u_div_PartRem_10__1_), .S0(quotient_9_), .Y(
        u_div_PartRem_9__2_) );
  INVX2 U21 ( .A(u_div_PartRem_10__1_), .Y(n16) );
  MXI2X1 U22 ( .A(n10), .B(u_div_PartRem_7__1_), .S0(quotient_6_), .Y(
        u_div_PartRem_6__2_) );
  INVX2 U23 ( .A(u_div_PartRem_7__1_), .Y(n10) );
  MXI2X1 U24 ( .A(n7), .B(u_div_PartRem_5__1_), .S0(quotient_4_), .Y(
        u_div_PartRem_4__2_) );
  INVX2 U25 ( .A(u_div_PartRem_5__1_), .Y(n7) );
  MXI2X1 U26 ( .A(n17), .B(a_11_), .S0(n37), .Y(u_div_PartRem_10__2_) );
  INVX2 U27 ( .A(a_11_), .Y(n17) );
  NAND2BX1 U28 ( .AN(u_div_PartRem_1__4_), .B(n18), .Y(quotient_0_) );
  AOI2B1X1 U29 ( .A1N(n2), .A0(u_div_PartRem_2__3_), .B0(u_div_PartRem_2__4_), 
        .Y(n19) );
  XNOR2X1 U30 ( .A(n2), .B(u_div_PartRem_2__3_), .Y(u_div_SumTmp_1__3_) );
  NOR2X1 U31 ( .A(u_div_PartRem_3__2_), .B(u_div_PartRem_3__1_), .Y(n21) );
  AOI2B1X1 U32 ( .A1N(n21), .A0(u_div_PartRem_3__3_), .B0(u_div_PartRem_3__4_), 
        .Y(n20) );
  CLKINVX1 U33 ( .A(n20), .Y(quotient_2_) );
  XNOR2X1 U34 ( .A(u_div_PartRem_3__1_), .B(u_div_PartRem_3__2_), .Y(
        u_div_SumTmp_2__2_) );
  XNOR2X1 U35 ( .A(n21), .B(u_div_PartRem_3__3_), .Y(u_div_SumTmp_2__3_) );
  NOR2X1 U36 ( .A(u_div_PartRem_4__2_), .B(u_div_PartRem_4__1_), .Y(n23) );
  AOI2B1X1 U37 ( .A1N(n23), .A0(u_div_PartRem_4__3_), .B0(u_div_PartRem_4__4_), 
        .Y(n22) );
  XNOR2X1 U38 ( .A(u_div_PartRem_4__1_), .B(u_div_PartRem_4__2_), .Y(
        u_div_SumTmp_3__2_) );
  XNOR2X1 U39 ( .A(n23), .B(u_div_PartRem_4__3_), .Y(u_div_SumTmp_3__3_) );
  NOR2X1 U40 ( .A(u_div_PartRem_5__2_), .B(u_div_PartRem_5__1_), .Y(n25) );
  AOI2B1X1 U41 ( .A1N(n25), .A0(u_div_PartRem_5__3_), .B0(u_div_PartRem_5__4_), 
        .Y(n24) );
  XNOR2X1 U42 ( .A(u_div_PartRem_5__1_), .B(u_div_PartRem_5__2_), .Y(
        u_div_SumTmp_4__2_) );
  XNOR2X1 U43 ( .A(n25), .B(u_div_PartRem_5__3_), .Y(u_div_SumTmp_4__3_) );
  NOR2X1 U44 ( .A(u_div_PartRem_6__2_), .B(u_div_PartRem_6__1_), .Y(n27) );
  AOI2B1X1 U45 ( .A1N(n27), .A0(u_div_PartRem_6__3_), .B0(u_div_PartRem_6__4_), 
        .Y(n26) );
  CLKINVX1 U46 ( .A(n26), .Y(quotient_5_) );
  XNOR2X1 U47 ( .A(u_div_PartRem_6__1_), .B(u_div_PartRem_6__2_), .Y(
        u_div_SumTmp_5__2_) );
  XNOR2X1 U48 ( .A(n27), .B(u_div_PartRem_6__3_), .Y(u_div_SumTmp_5__3_) );
  NOR2X1 U49 ( .A(u_div_PartRem_7__2_), .B(u_div_PartRem_7__1_), .Y(n29) );
  AOI2B1X1 U50 ( .A1N(n29), .A0(u_div_PartRem_7__3_), .B0(u_div_PartRem_7__4_), 
        .Y(n28) );
  XNOR2X1 U51 ( .A(u_div_PartRem_7__1_), .B(u_div_PartRem_7__2_), .Y(
        u_div_SumTmp_6__2_) );
  XNOR2X1 U52 ( .A(n29), .B(u_div_PartRem_7__3_), .Y(u_div_SumTmp_6__3_) );
  NOR2X1 U53 ( .A(u_div_PartRem_8__2_), .B(u_div_PartRem_8__1_), .Y(n31) );
  AOI2B1X1 U54 ( .A1N(n31), .A0(u_div_PartRem_8__3_), .B0(u_div_PartRem_8__4_), 
        .Y(n30) );
  XNOR2X1 U55 ( .A(u_div_PartRem_8__1_), .B(u_div_PartRem_8__2_), .Y(
        u_div_SumTmp_7__2_) );
  XNOR2X1 U56 ( .A(n31), .B(u_div_PartRem_8__3_), .Y(u_div_SumTmp_7__3_) );
  NOR2X1 U57 ( .A(u_div_PartRem_9__2_), .B(u_div_PartRem_9__1_), .Y(n33) );
  AOI2B1X1 U58 ( .A1N(n33), .A0(u_div_PartRem_9__3_), .B0(u_div_PartRem_9__4_), 
        .Y(n32) );
  XNOR2X1 U59 ( .A(u_div_PartRem_9__1_), .B(u_div_PartRem_9__2_), .Y(
        u_div_SumTmp_8__2_) );
  XNOR2X1 U60 ( .A(n33), .B(u_div_PartRem_9__3_), .Y(u_div_SumTmp_8__3_) );
  NOR2X1 U61 ( .A(u_div_PartRem_10__2_), .B(u_div_PartRem_10__1_), .Y(n35) );
  AOI2B1X1 U62 ( .A1N(n35), .A0(u_div_PartRem_10__3_), .B0(
        u_div_PartRem_10__4_), .Y(n34) );
  XNOR2X1 U63 ( .A(u_div_PartRem_10__1_), .B(u_div_PartRem_10__2_), .Y(
        u_div_SumTmp_9__2_) );
  XNOR2X1 U64 ( .A(n35), .B(u_div_PartRem_10__3_), .Y(u_div_SumTmp_9__3_) );
  NOR2X1 U65 ( .A(a_12_), .B(a_11_), .Y(n36) );
  NOR2BX1 U66 ( .AN(a_13_), .B(n36), .Y(n37) );
  XNOR2X1 U67 ( .A(a_11_), .B(a_12_), .Y(u_div_SumTmp_10__2_) );
  XNOR2X1 U68 ( .A(n36), .B(a_13_), .Y(u_div_SumTmp_10__3_) );
endmodule


module functional_unit_DW01_inc_1 ( SUM, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, 
        A_1_, A_0_ );
  output [8:0] SUM;
  input A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_;

  wire   [7:2] carry;

  ADDHX1 U1_1_6 ( .A(A_6_), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_7 ( .A(A_7_), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1 U1_1_5 ( .A(A_5_), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A_4_), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A_3_), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_1 ( .A(A_1_), .B(A_0_), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_2 ( .A(A_2_), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  INVX2 U1 ( .A(A_0_), .Y(SUM[0]) );
endmodule


module functional_unit_DW01_add_4 ( A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, 
        A_0_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_, SUM_8_, SUM_7_, 
        SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_ );
  input A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_, A_0_, B_7_, B_6_, B_5_, B_4_,
         B_3_, B_2_, B_1_, B_0_;
  output SUM_8_, SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_, SUM_2_, SUM_1_;

  wire   [7:1] carry;

  ADDFX1 U1_7 ( .A(A_7_), .B(B_7_), .CI(carry[7]), .CO(SUM_8_), .S(SUM_7_) );
  ADDFX1 U1_6 ( .A(A_6_), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM_6_)
         );
  ADDFX1 U1_5 ( .A(A_5_), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM_5_)
         );
  ADDFX1 U1_4 ( .A(A_4_), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM_4_)
         );
  ADDFX1 U1_2 ( .A(A_2_), .B(B_2_), .CI(carry[2]), .CO(carry[3]), .S(SUM_2_)
         );
  ADDFX1 U1_1 ( .A(A_1_), .B(B_1_), .CI(carry[1]), .CO(carry[2]), .S(SUM_1_)
         );
  ADDFX1 U1_3 ( .A(A_3_), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM_3_)
         );
  AND2X1 U1 ( .A(B_0_), .B(A_0_), .Y(carry[1]) );
endmodule


module functional_unit_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module functional_unit_DW01_sub_7 ( A, B, DIFF );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  wire   n1, n2, n3, n9, n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23,
         n28, n29, n30, n31, n32, n33, n34, n35, n38, n44, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n62, n66, n67, n68, n69,
         n70, n72, n73, n74, n75, n76, n77, n78, n79, n82, n83, n84, n85, n91,
         n93, n94, n96, n97, n98, n99, n105, n107, n109, n110, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n160, n161, n162,
         n163, n164, n165, n166, n167;

  OAI21X1 U17 ( .A0(n38), .A1(n30), .B0(n31), .Y(n29) );
  OAI21X1 U26 ( .A0(n98), .A1(n35), .B0(n38), .Y(n34) );
  OAI21X1 U49 ( .A0(n62), .A1(n54), .B0(n55), .Y(n53) );
  OAI21X1 U58 ( .A0(n2), .A1(n59), .B0(n62), .Y(n58) );
  OAI21X1 U77 ( .A0(n82), .A1(n74), .B0(n75), .Y(n73) );
  OAI21X1 U86 ( .A0(n2), .A1(n79), .B0(n82), .Y(n78) );
  AO21X2 U136 ( .A0(n53), .A1(n166), .B0(n44), .Y(n160) );
  INVX2 U137 ( .A(B[6]), .Y(n116) );
  INVX2 U138 ( .A(B[8]), .Y(n114) );
  INVX2 U139 ( .A(B[2]), .Y(n120) );
  INVX2 U140 ( .A(B[4]), .Y(n118) );
  INVX2 U141 ( .A(B[5]), .Y(n117) );
  INVX2 U142 ( .A(B[7]), .Y(n115) );
  INVX2 U143 ( .A(B[9]), .Y(n113) );
  INVX2 U144 ( .A(B[3]), .Y(n119) );
  INVX2 U145 ( .A(B[0]), .Y(n122) );
  INVX2 U146 ( .A(B[1]), .Y(n121) );
  INVX2 U147 ( .A(n3), .Y(n84) );
  INVX2 U148 ( .A(n2), .Y(n85) );
  OAI21BX1 U149 ( .A0(n2), .A1(n70), .B0N(n73), .Y(n69) );
  OAI21BX1 U150 ( .A0(n2), .A1(n50), .B0N(n53), .Y(n49) );
  NOR2X2 U151 ( .A(n3), .B(n59), .Y(n57) );
  AND2X2 U152 ( .A(n99), .B(n28), .Y(n161) );
  INVX2 U153 ( .A(n52), .Y(n50) );
  INVX2 U154 ( .A(n72), .Y(n70) );
  XOR2X1 U155 ( .A(n83), .B(n18), .Y(DIFF[3]) );
  NAND2X2 U156 ( .A(n110), .B(n82), .Y(n18) );
  AOI21X1 U157 ( .A0(n9), .A1(n84), .B0(n85), .Y(n83) );
  INVX2 U158 ( .A(n79), .Y(n110) );
  INVX2 U159 ( .A(n1), .Y(n9) );
  XOR2X1 U160 ( .A(n94), .B(n19), .Y(DIFF[2]) );
  NAND2X2 U161 ( .A(n164), .B(n93), .Y(n19) );
  AOI21X1 U162 ( .A0(n9), .A1(n99), .B0(n96), .Y(n94) );
  XOR2X1 U163 ( .A(n1), .B(n20), .Y(DIFF[1]) );
  NAND2X2 U164 ( .A(n99), .B(n98), .Y(n20) );
  XOR2X1 U165 ( .A(n67), .B(n16), .Y(DIFF[5]) );
  NAND2X2 U166 ( .A(n165), .B(n66), .Y(n16) );
  AOI21X1 U167 ( .A0(n9), .A1(n68), .B0(n69), .Y(n67) );
  NOR2X2 U168 ( .A(n3), .B(n70), .Y(n68) );
  NAND2X2 U169 ( .A(n99), .B(n164), .Y(n3) );
  INVX2 U170 ( .A(n97), .Y(n99) );
  AOI21X1 U171 ( .A0(n96), .A1(n164), .B0(n91), .Y(n2) );
  INVX2 U172 ( .A(n98), .Y(n96) );
  XOR2X1 U173 ( .A(n76), .B(n17), .Y(DIFF[4]) );
  NAND2X2 U174 ( .A(n109), .B(n75), .Y(n17) );
  AOI21X1 U175 ( .A0(n9), .A1(n77), .B0(n78), .Y(n76) );
  INVX2 U176 ( .A(n74), .Y(n109) );
  XOR2X1 U177 ( .A(n47), .B(n14), .Y(DIFF[7]) );
  NAND2X2 U178 ( .A(n166), .B(n46), .Y(n14) );
  AOI21X1 U179 ( .A0(n9), .A1(n48), .B0(n49), .Y(n47) );
  NOR2X2 U180 ( .A(n3), .B(n50), .Y(n48) );
  XOR2X1 U181 ( .A(n56), .B(n15), .Y(DIFF[6]) );
  NAND2X2 U182 ( .A(n107), .B(n55), .Y(n15) );
  AOI21X1 U183 ( .A0(n9), .A1(n57), .B0(n58), .Y(n56) );
  INVX2 U184 ( .A(n54), .Y(n107) );
  AOI21BX2 U185 ( .A0(n73), .A1(n165), .B0N(n66), .Y(n62) );
  AOI21X1 U186 ( .A0(n91), .A1(n163), .B0(n160), .Y(n38) );
  INVX2 U187 ( .A(n46), .Y(n44) );
  AO21X2 U188 ( .A0(n96), .A1(n28), .B0(n29), .Y(n162) );
  NOR2X2 U189 ( .A(n3), .B(n79), .Y(n77) );
  XOR2X1 U190 ( .A(n32), .B(n13), .Y(DIFF[8]) );
  NAND2X2 U191 ( .A(n105), .B(n31), .Y(n13) );
  AOI21X1 U192 ( .A0(n9), .A1(n33), .B0(n34), .Y(n32) );
  INVX2 U193 ( .A(n30), .Y(n105) );
  INVX2 U194 ( .A(n93), .Y(n91) );
  NOR2X2 U195 ( .A(n79), .B(n74), .Y(n72) );
  NOR2X2 U196 ( .A(n59), .B(n54), .Y(n52) );
  NOR2X2 U197 ( .A(n35), .B(n30), .Y(n28) );
  NAND2X2 U198 ( .A(n72), .B(n165), .Y(n59) );
  NAND2X2 U199 ( .A(n164), .B(n163), .Y(n35) );
  AND2X2 U200 ( .A(n52), .B(n166), .Y(n163) );
  NOR2X2 U201 ( .A(n97), .B(n35), .Y(n33) );
  NOR2X2 U202 ( .A(n122), .B(A[0]), .Y(n1) );
  NOR2X2 U203 ( .A(n121), .B(A[1]), .Y(n97) );
  NAND2X2 U204 ( .A(n121), .B(A[1]), .Y(n98) );
  XOR2X1 U205 ( .A(n23), .B(n12), .Y(DIFF[9]) );
  NAND2X2 U206 ( .A(n167), .B(n22), .Y(n12) );
  AOI21X1 U207 ( .A0(n9), .A1(n161), .B0(n162), .Y(n23) );
  NAND2X2 U208 ( .A(n113), .B(A[9]), .Y(n22) );
  NAND2X2 U209 ( .A(n119), .B(A[3]), .Y(n82) );
  XNOR2X1 U210 ( .A(n122), .B(A[0]), .Y(DIFF[0]) );
  OR2X2 U211 ( .A(n120), .B(A[2]), .Y(n164) );
  NAND2X2 U212 ( .A(n120), .B(A[2]), .Y(n93) );
  NOR2X2 U213 ( .A(n119), .B(A[3]), .Y(n79) );
  NOR2X2 U214 ( .A(n118), .B(A[4]), .Y(n74) );
  NAND2X2 U215 ( .A(n118), .B(A[4]), .Y(n75) );
  OR2X2 U216 ( .A(n117), .B(A[5]), .Y(n165) );
  NAND2X2 U217 ( .A(n117), .B(A[5]), .Y(n66) );
  NOR2X2 U218 ( .A(n116), .B(A[6]), .Y(n54) );
  NAND2X2 U219 ( .A(n116), .B(A[6]), .Y(n55) );
  OR2X2 U220 ( .A(n115), .B(A[7]), .Y(n166) );
  NAND2X2 U221 ( .A(n115), .B(A[7]), .Y(n46) );
  NOR2X2 U222 ( .A(n114), .B(A[8]), .Y(n30) );
  NAND2X2 U223 ( .A(n114), .B(A[8]), .Y(n31) );
  OR2X2 U224 ( .A(n113), .B(A[9]), .Y(n167) );
endmodule


module functional_unit_DW_div_uns_10 ( a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, 
        a_7_, a_6_, a_5_, a_4_, a_3_, quotient_9_, quotient_8_, quotient_7_, 
        quotient_6_, quotient_5_, quotient_4_, quotient_3_, quotient_2_, 
        quotient_1_, quotient_0_ );
  input a_13_, a_12_, a_11_, a_10_, a_9_, a_8_, a_7_, a_6_, a_5_, a_4_, a_3_;
  output quotient_9_, quotient_8_, quotient_7_, quotient_6_, quotient_5_,
         quotient_4_, quotient_3_, quotient_2_, quotient_1_, quotient_0_;
  wire   u_div_SumTmp_3__1__2_, u_div_SumTmp_3__1__3_, u_div_SumTmp_3__2__2_,
         u_div_SumTmp_3__2__3_, u_div_SumTmp_3__3__2_, u_div_SumTmp_3__3__3_,
         u_div_SumTmp_3__4__2_, u_div_SumTmp_3__4__3_, u_div_SumTmp_2__1__3_,
         u_div_SumTmp_1__1__2_, u_div_SumTmp_1__1__3_, u_div_SumTmp_1__2__2_,
         u_div_SumTmp_1__2__3_, u_div_SumTmp_1__3__2_, u_div_SumTmp_1__3__3_,
         u_div_SumTmp_1__4__2_, u_div_SumTmp_1__4__3_, u_div_SumTmp_1__5__2_,
         u_div_SumTmp_1__5__3_, u_div_PartRem_1__4_, u_div_PartRem_1__5_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_3__5_,
         u_div_PartRem_4__3_, u_div_PartRem_4__4_, u_div_PartRem_4__5_,
         u_div_PartRem_5__3_, u_div_PartRem_5__4_, u_div_PartRem_5__5_, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48,
         n49, n50, n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n62, n63,
         n64, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132;

  OR2X2 U1 ( .A(n29), .B(u_div_PartRem_2__5_), .Y(quotient_3_) );
  AO21X2 U2 ( .A0(n10), .A1(u_div_PartRem_1__4_), .B0(u_div_PartRem_1__5_), 
        .Y(quotient_1_) );
  AO21X2 U3 ( .A0(n41), .A1(u_div_PartRem_2__3_), .B0(n14), .Y(n3) );
  AO21X2 U4 ( .A0(n59), .A1(u_div_PartRem_4__3_), .B0(n12), .Y(n4) );
  AO21X2 U5 ( .A0(n50), .A1(u_div_PartRem_3__3_), .B0(n13), .Y(n5) );
  AO21X2 U6 ( .A0(n68), .A1(u_div_PartRem_5__3_), .B0(n11), .Y(n6) );
  XNOR2X1 U7 ( .A(n90), .B(u_div_PartRem_5__3_), .Y(n7) );
  XNOR2X1 U8 ( .A(n104), .B(u_div_PartRem_4__3_), .Y(n8) );
  XNOR2X1 U9 ( .A(n118), .B(u_div_PartRem_3__3_), .Y(n9) );
  NAND3XL U10 ( .A(n129), .B(n130), .C(n131), .Y(n10) );
  OR2X2 U11 ( .A(u_div_PartRem_5__5_), .B(u_div_PartRem_5__4_), .Y(n11) );
  OR2X2 U12 ( .A(u_div_PartRem_4__5_), .B(u_div_PartRem_4__4_), .Y(n12) );
  OR2X2 U13 ( .A(u_div_PartRem_3__5_), .B(u_div_PartRem_3__4_), .Y(n13) );
  OR2X2 U14 ( .A(u_div_PartRem_2__5_), .B(u_div_PartRem_2__4_), .Y(n14) );
  NAND3XL U15 ( .A(n77), .B(n78), .C(n79), .Y(u_div_PartRem_4__5_) );
  NAND3XL U16 ( .A(n91), .B(n92), .C(n93), .Y(u_div_PartRem_3__5_) );
  NAND3XL U17 ( .A(n86), .B(n87), .C(n88), .Y(u_div_PartRem_4__4_) );
  AND2X2 U18 ( .A(quotient_6_), .B(n20), .Y(n15) );
  INVX2 U19 ( .A(n96), .Y(quotient_6_) );
  INVX2 U20 ( .A(n82), .Y(quotient_8_) );
  AND2X2 U21 ( .A(quotient_7_), .B(quotient_6_), .Y(n16) );
  AND2X2 U22 ( .A(quotient_5_), .B(quotient_4_), .Y(n17) );
  AND2X2 U23 ( .A(quotient_8_), .B(n25), .Y(n18) );
  AND2X2 U24 ( .A(quotient_4_), .B(n22), .Y(n19) );
  NAND2X2 U25 ( .A(quotient_7_), .B(n96), .Y(n95) );
  NOR2X2 U26 ( .A(n109), .B(n9), .Y(n108) );
  MXI2X1 U27 ( .A(n4), .B(n51), .S0(quotient_7_), .Y(n96) );
  NAND2X2 U28 ( .A(n53), .B(n52), .Y(n51) );
  MXI2X1 U29 ( .A(n6), .B(n60), .S0(quotient_9_), .Y(n82) );
  NAND2X2 U30 ( .A(n62), .B(n61), .Y(n60) );
  NOR2X2 U31 ( .A(n21), .B(u_div_PartRem_4__5_), .Y(n20) );
  INVX2 U32 ( .A(n20), .Y(quotient_7_) );
  AO21X2 U33 ( .A0(u_div_PartRem_4__4_), .A1(a_8_), .B0(n57), .Y(n21) );
  NOR2X2 U34 ( .A(n23), .B(u_div_PartRem_3__5_), .Y(n22) );
  INVX2 U35 ( .A(n22), .Y(quotient_5_) );
  AO21X2 U36 ( .A0(u_div_PartRem_3__4_), .A1(a_6_), .B0(n48), .Y(n23) );
  INVX2 U37 ( .A(n110), .Y(quotient_4_) );
  INVX2 U38 ( .A(n119), .Y(quotient_2_) );
  NOR2X2 U39 ( .A(n67), .B(n83), .Y(n66) );
  INVX2 U40 ( .A(n69), .Y(n84) );
  AND2X2 U41 ( .A(quotient_9_), .B(quotient_8_), .Y(n24) );
  NOR2X2 U42 ( .A(n58), .B(n97), .Y(n57) );
  NOR2X2 U43 ( .A(n49), .B(n111), .Y(n48) );
  NAND2X2 U44 ( .A(quotient_5_), .B(n110), .Y(n109) );
  NOR2X2 U45 ( .A(n109), .B(a_6_), .Y(n117) );
  NAND2X2 U46 ( .A(quotient_9_), .B(n82), .Y(n81) );
  INVX2 U47 ( .A(u_div_PartRem_4__5_), .Y(n52) );
  NOR2X2 U48 ( .A(n81), .B(n7), .Y(n80) );
  INVX2 U49 ( .A(u_div_PartRem_3__5_), .Y(n43) );
  INVX2 U50 ( .A(u_div_PartRem_2__5_), .Y(n33) );
  NOR2X2 U51 ( .A(n95), .B(n8), .Y(n94) );
  XOR2X1 U52 ( .A(n68), .B(u_div_PartRem_5__3_), .Y(u_div_SumTmp_1__4__3_) );
  XOR2X1 U53 ( .A(n59), .B(u_div_PartRem_4__3_), .Y(u_div_SumTmp_1__3__3_) );
  XOR2X1 U54 ( .A(n50), .B(u_div_PartRem_3__3_), .Y(u_div_SumTmp_1__2__3_) );
  MXI2X1 U55 ( .A(n5), .B(n42), .S0(quotient_5_), .Y(n110) );
  NAND2X2 U56 ( .A(n44), .B(n43), .Y(n42) );
  NOR2X2 U57 ( .A(n26), .B(u_div_PartRem_5__5_), .Y(n25) );
  INVX2 U58 ( .A(n25), .Y(quotient_9_) );
  AO21X2 U59 ( .A0(u_div_PartRem_5__4_), .A1(a_10_), .B0(n66), .Y(n26) );
  MXI2X1 U60 ( .A(n3), .B(n32), .S0(quotient_3_), .Y(n119) );
  NAND2X2 U61 ( .A(n34), .B(n33), .Y(n32) );
  INVX2 U62 ( .A(u_div_PartRem_3__4_), .Y(n49) );
  INVX2 U63 ( .A(u_div_PartRem_4__4_), .Y(n58) );
  INVX2 U64 ( .A(u_div_PartRem_2__4_), .Y(n39) );
  NAND2BX2 U65 ( .AN(a_11_), .B(n76), .Y(n70) );
  INVX2 U66 ( .A(u_div_PartRem_5__4_), .Y(n67) );
  AND2X2 U67 ( .A(quotient_3_), .B(quotient_2_), .Y(n27) );
  NAND2X2 U68 ( .A(n70), .B(a_13_), .Y(n69) );
  NOR2BX1 U69 ( .AN(quotient_2_), .B(quotient_3_), .Y(n28) );
  NOR2X2 U70 ( .A(n39), .B(n123), .Y(n38) );
  NAND3XL U71 ( .A(u_div_PartRem_5__3_), .B(n25), .C(n82), .Y(n78) );
  NAND2X2 U72 ( .A(u_div_SumTmp_1__4__3_), .B(n18), .Y(n77) );
  AOI21X1 U73 ( .A0(u_div_SumTmp_3__4__3_), .A1(n24), .B0(n80), .Y(n79) );
  NAND3XL U74 ( .A(u_div_PartRem_4__3_), .B(n20), .C(n96), .Y(n92) );
  NAND2X2 U75 ( .A(u_div_SumTmp_1__3__3_), .B(n15), .Y(n91) );
  AOI21X1 U76 ( .A0(u_div_SumTmp_3__3__3_), .A1(n16), .B0(n94), .Y(n93) );
  NAND3XL U77 ( .A(n105), .B(n106), .C(n107), .Y(u_div_PartRem_2__5_) );
  NAND3XL U78 ( .A(u_div_PartRem_3__3_), .B(n22), .C(n110), .Y(n106) );
  NAND2X2 U79 ( .A(u_div_SumTmp_1__2__3_), .B(n19), .Y(n105) );
  AOI21X1 U80 ( .A0(u_div_SumTmp_3__2__3_), .A1(n17), .B0(n108), .Y(n107) );
  INVX2 U81 ( .A(u_div_PartRem_1__5_), .Y(n31) );
  NAND2X2 U82 ( .A(n54), .B(n55), .Y(n53) );
  NOR2X2 U83 ( .A(n97), .B(n58), .Y(n54) );
  NOR2X2 U84 ( .A(n95), .B(a_8_), .Y(n103) );
  NOR2X2 U85 ( .A(n81), .B(a_10_), .Y(n89) );
  NAND2X2 U86 ( .A(n63), .B(n64), .Y(n62) );
  NOR2X2 U87 ( .A(n83), .B(n67), .Y(n63) );
  INVX2 U88 ( .A(u_div_PartRem_5__5_), .Y(n61) );
  XOR2X1 U89 ( .A(n64), .B(u_div_PartRem_5__3_), .Y(u_div_SumTmp_3__4__3_) );
  XOR2X1 U90 ( .A(n55), .B(u_div_PartRem_4__3_), .Y(u_div_SumTmp_3__3__3_) );
  NAND2BX2 U91 ( .AN(a_9_), .B(n90), .Y(n68) );
  XOR2X1 U92 ( .A(n90), .B(a_9_), .Y(u_div_SumTmp_1__4__2_) );
  NAND2BX2 U93 ( .AN(a_7_), .B(n104), .Y(n59) );
  XOR2X1 U94 ( .A(n104), .B(a_7_), .Y(u_div_SumTmp_1__3__2_) );
  NAND2BX2 U95 ( .AN(a_5_), .B(n118), .Y(n50) );
  XOR2X1 U96 ( .A(n118), .B(a_5_), .Y(u_div_SumTmp_1__2__2_) );
  OAI2B11X2 U97 ( .A1N(n119), .A0(n120), .B0(n121), .C0(n122), .Y(
        u_div_PartRem_1__5_) );
  MXI2X1 U98 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_2__1__3_), .S0(
        quotient_3_), .Y(n120) );
  NAND2X2 U99 ( .A(u_div_SumTmp_1__1__3_), .B(n28), .Y(n121) );
  NAND2X2 U100 ( .A(u_div_SumTmp_3__1__3_), .B(n27), .Y(n122) );
  AO21X2 U101 ( .A0(u_div_PartRem_2__4_), .A1(a_4_), .B0(n38), .Y(n29) );
  NAND3XL U102 ( .A(n100), .B(n101), .C(n102), .Y(u_div_PartRem_3__4_) );
  NAND3XL U103 ( .A(a_8_), .B(n20), .C(n96), .Y(n101) );
  NAND2X2 U104 ( .A(u_div_SumTmp_1__3__2_), .B(n15), .Y(n100) );
  AOI21X1 U105 ( .A0(u_div_SumTmp_3__3__2_), .A1(n16), .B0(n103), .Y(n102) );
  NAND3XL U106 ( .A(a_10_), .B(n25), .C(n82), .Y(n87) );
  NAND2X2 U107 ( .A(u_div_SumTmp_1__4__2_), .B(n18), .Y(n86) );
  AOI21X1 U108 ( .A0(u_div_SumTmp_3__4__2_), .A1(n24), .B0(n89), .Y(n88) );
  NAND3XL U109 ( .A(n114), .B(n115), .C(n116), .Y(u_div_PartRem_2__4_) );
  NAND3XL U110 ( .A(a_6_), .B(n22), .C(n110), .Y(n115) );
  NAND2X2 U111 ( .A(u_div_SumTmp_1__2__2_), .B(n19), .Y(n114) );
  AOI21X1 U112 ( .A0(u_div_SumTmp_3__2__2_), .A1(n17), .B0(n117), .Y(n116) );
  NAND2X2 U113 ( .A(n74), .B(n75), .Y(u_div_PartRem_5__4_) );
  NAND2X2 U114 ( .A(a_12_), .B(n69), .Y(n75) );
  NAND2X2 U115 ( .A(u_div_SumTmp_1__5__2_), .B(n84), .Y(n74) );
  XNOR2X1 U116 ( .A(a_12_), .B(a_11_), .Y(u_div_SumTmp_1__5__2_) );
  MXI2X1 U117 ( .A(n30), .B(n31), .S0(quotient_1_), .Y(quotient_0_) );
  INVX2 U118 ( .A(n83), .Y(u_div_PartRem_5__3_) );
  MXI2X1 U119 ( .A(a_11_), .B(n85), .S0(n84), .Y(n83) );
  NOR2X2 U120 ( .A(u_div_PartRem_1__5_), .B(u_div_PartRem_1__4_), .Y(n30) );
  NAND2X2 U121 ( .A(n71), .B(n72), .Y(u_div_PartRem_5__5_) );
  NAND2X2 U122 ( .A(a_13_), .B(n69), .Y(n72) );
  NAND2X2 U123 ( .A(u_div_SumTmp_1__5__3_), .B(n84), .Y(n71) );
  XNOR2X1 U124 ( .A(n70), .B(n73), .Y(u_div_SumTmp_1__5__3_) );
  NAND2X2 U125 ( .A(n45), .B(n46), .Y(n44) );
  NOR2X2 U126 ( .A(n111), .B(n49), .Y(n45) );
  NAND2X2 U127 ( .A(n35), .B(n36), .Y(n34) );
  NOR2X2 U128 ( .A(n123), .B(n39), .Y(n35) );
  INVX2 U129 ( .A(n97), .Y(u_div_PartRem_4__3_) );
  MXI2X1 U130 ( .A(a_9_), .B(n98), .S0(quotient_8_), .Y(n97) );
  MXI2X1 U131 ( .A(a_9_), .B(a_9_), .S0(quotient_9_), .Y(n98) );
  INVX2 U132 ( .A(n111), .Y(u_div_PartRem_3__3_) );
  MXI2X1 U133 ( .A(a_7_), .B(n112), .S0(quotient_6_), .Y(n111) );
  MXI2X1 U134 ( .A(a_7_), .B(a_7_), .S0(quotient_7_), .Y(n112) );
  NAND2X2 U135 ( .A(n28), .B(n37), .Y(n131) );
  XOR2X1 U136 ( .A(a_4_), .B(n123), .Y(u_div_SumTmp_2__1__3_) );
  XOR2X1 U137 ( .A(n36), .B(u_div_PartRem_2__3_), .Y(u_div_SumTmp_3__1__3_) );
  XOR2X1 U138 ( .A(n41), .B(u_div_PartRem_2__3_), .Y(u_div_SumTmp_1__1__3_) );
  XOR2X1 U139 ( .A(n46), .B(u_div_PartRem_3__3_), .Y(u_div_SumTmp_3__2__3_) );
  INVX2 U140 ( .A(a_9_), .Y(n99) );
  NOR2X2 U141 ( .A(n90), .B(n99), .Y(n64) );
  XOR2X1 U142 ( .A(a_10_), .B(a_9_), .Y(u_div_SumTmp_3__4__2_) );
  INVX2 U143 ( .A(a_7_), .Y(n113) );
  NOR2X2 U144 ( .A(n104), .B(n113), .Y(n55) );
  XOR2X1 U145 ( .A(a_8_), .B(a_7_), .Y(u_div_SumTmp_3__3__2_) );
  INVX2 U146 ( .A(a_6_), .Y(n118) );
  INVX2 U147 ( .A(a_13_), .Y(n73) );
  INVX2 U148 ( .A(a_12_), .Y(n76) );
  INVX2 U149 ( .A(n123), .Y(u_div_PartRem_2__3_) );
  MXI2X1 U150 ( .A(a_5_), .B(n124), .S0(quotient_4_), .Y(n123) );
  MXI2X1 U151 ( .A(a_5_), .B(a_5_), .S0(quotient_5_), .Y(n124) );
  INVX2 U152 ( .A(a_11_), .Y(n85) );
  INVX2 U153 ( .A(a_10_), .Y(n90) );
  INVX2 U154 ( .A(a_8_), .Y(n104) );
  INVX2 U155 ( .A(a_5_), .Y(n125) );
  NOR2X2 U156 ( .A(n118), .B(n125), .Y(n46) );
  XOR2X1 U157 ( .A(a_6_), .B(a_5_), .Y(u_div_SumTmp_3__2__2_) );
  NOR2X2 U158 ( .A(n40), .B(n37), .Y(n36) );
  INVX2 U159 ( .A(a_3_), .Y(n37) );
  NAND2BX2 U160 ( .AN(a_3_), .B(n40), .Y(n41) );
  XOR2X1 U161 ( .A(a_4_), .B(a_3_), .Y(u_div_SumTmp_3__1__2_) );
  XOR2X1 U162 ( .A(n40), .B(a_3_), .Y(u_div_SumTmp_1__1__2_) );
  OAI2B11X2 U163 ( .A1N(n119), .A0(n126), .B0(n127), .C0(n128), .Y(
        u_div_PartRem_1__4_) );
  MXI2X1 U164 ( .A(a_4_), .B(n40), .S0(quotient_3_), .Y(n126) );
  NAND2X2 U165 ( .A(u_div_SumTmp_1__1__2_), .B(n28), .Y(n127) );
  NAND2X2 U166 ( .A(u_div_SumTmp_3__1__2_), .B(n27), .Y(n128) );
  NAND2X2 U167 ( .A(n119), .B(a_3_), .Y(n130) );
  NAND2X2 U168 ( .A(n132), .B(quotient_3_), .Y(n129) );
  NOR2X2 U169 ( .A(a_3_), .B(n119), .Y(n132) );
  INVX2 U170 ( .A(a_4_), .Y(n40) );
endmodule


module functional_unit ( y_input, clk, start, rst_n, state, x_guess, done );
  input [9:0] y_input;
  output [1:0] state;
  output [7:0] x_guess;
  input clk, start, rst_n;
  output done;
  wire   N18, N19, N24, N25, N26, N27, N28, N29, N30, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N135, N137, N138, N139, N140, N141, N142,
         N143, N144, N146, N147, N148, N149, N150, N151, N152, N208, N257,
         N258, N259, N260, N261, N262, N263, N264, N265, N266, N285, N286,
         N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N303, N304, N305, N306, N307, N308,
         N309, N310, N311, N312, N313, N314, N354, N355, N356, N357, N358,
         N359, N360, N361, N362, N363, N364, N365, N366, N367, N368, N369,
         N370, N371, N372, N373, N374, N375, N376, N377, N378, N379, N380,
         N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, N391,
         N392, N393, N394, N395, N397, N398, N399, N400, N401, N402, N403,
         N404, n960, n1240, n126, n130, n131, n132, n133, n134, n1350, n136,
         n1370, n1380, n1390, n1410, n1420, n1430, n1440, n145, n1460, n1470,
         n1480, n1490, n1500, n1510, n1520, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, N348, N347, N346, N345, N344, N343, N342, N341, N339, N335,
         N334, N333, N332, N331, N330, N329, N328, N43, N42, N41, N40, N39,
         N38, N37, N36, N35, N34, mult_55_n8, mult_55_n7, mult_55_n6,
         mult_55_n5, mult_55_n4, mult_55_n3, mult_55_n2, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n203, n204, n205, n206, n207,
         n2080, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n2570, n2580, n2590, n2600, n2610,
         n2620, n2630, n2640, n2650, n2660, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n2850, n2860, n2870, n2880, n2890, n2900, n2910, n2920, n2930,
         n2940, n2950, n2960, n2970, n2980, n2990, n3000, n3010, n3020, n3030,
         n3040, n3050, n3060, n3070, n3080, n3090, n3100, n3110, n3120, n3130,
         n3140, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n3280, n3290, n3300, n3310, n3320, n3330, n3340,
         n3350, n336, n337, n338, n3390, n340, n3410, n3420, n3430, n3440,
         n3450, n3460, n3470, n3480, n349, n350, n351, n352, n353, n3540,
         n3550, n3560, n3570, n3580, n3590, n3600, n3610, n3620, n3630, n3640,
         n3650, n3660, n3670, n3680, n3690, n3700, n3710, n3720, n3730, n3740,
         n3750, n3760, n3770, n3780, n3790, n3800, n3810, n3820, n3830, n3840,
         n3850, n3860, n3870, n3880, n3890, n3900, n3910, n3920, n3930, n3940,
         n3950, n396, n3970, n3980, n3990, n4000, n4010, n4020, n4030, n4040,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596;
  wire   [7:0] lower;
  wire   [7:0] upper;
  wire   [13:5] add_93_2_carry;
  wire   [12:5] add_55_carry;

  functional_unit_DW01_inc_0 add_97 ( .A(x_guess), .SUM({N404, N403, N402, 
        N401, N400, N399, N398, N397}) );
  functional_unit_DW01_sub_0 sub_95 ( .A({n201, n200, n199, n198, n197, n196, 
        n195, n193, n191, n190}), .B({N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105}), .DIFF({N394, N393, N392, N391, N390, N389, N388, 
        N387, N386, N385}) );
  functional_unit_DW01_sub_1 sub_94 ( .A({N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365}), .B({n201, n200, n199, n198, n197, n196, n195, 
        n193, n191, n190}), .DIFF({N384, N383, N382, N381, N380, N379, N378, 
        N377, N376, N375}) );
  functional_unit_DW_div_uns_0 div_93 ( .a_14_(N364), .a_13_(N363), .a_12_(
        N362), .a_11_(N361), .a_10_(N360), .a_9_(N359), .a_8_(N358), .a_7_(
        N357), .a_6_(N356), .a_5_(N355), .a_4_(N354), .a_3_(n204), 
        .quotient_9_(N374), .quotient_8_(N373), .quotient_7_(N372), 
        .quotient_6_(N371), .quotient_5_(N370), .quotient_4_(N369), 
        .quotient_3_(N368), .quotient_2_(N367), .quotient_1_(N366), 
        .quotient_0_(N365) );
  functional_unit_DW01_sub_3 sub_84 ( .A({N114, N113, N112, N111, N110, N109, 
        N108, N107, N106, N105}), .B({n201, n200, n199, n198, n197, n196, n194, 
        n192, n191, n190}), .DIFF({N314, N313, N312, N311, N310, N309, N308, 
        N307, N306, N305}) );
  functional_unit_DW01_sub_5 sub_57_2 ( .A({N114, N113, N112, N111, N110, N109, 
        N108, N107, N106, N105}), .B({n201, n200, n199, n198, n197, n196, n195, 
        n193, n191, n190}), .DIFF({N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115}) );
  functional_unit_DW01_sub_6 sub_56_2 ( .A({N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58}), .B({n201, n200, n199, n198, n197, n196, n194, n192, 
        n191, n190}), .DIFF({N77, N76, N75, N74, N73, N72, N71, N70, N69, N68}) );
  functional_unit_DW_div_uns_2 div_55 ( .a_13_(N57), .a_12_(N56), .a_11_(N55), 
        .a_10_(N54), .a_9_(N53), .a_8_(N52), .a_7_(N51), .a_6_(N50), .a_5_(N49), .a_4_(N48), .a_3_(n461), .quotient_9_(N67), .quotient_8_(N66), .quotient_7_(
        N65), .quotient_6_(N64), .quotient_5_(N63), .quotient_4_(N62), 
        .quotient_3_(N61), .quotient_2_(N60), .quotient_1_(N59), .quotient_0_(
        N58) );
  functional_unit_DW_div_uns_3 r450 ( .a_13_(N104), .a_12_(N103), .a_11_(N102), 
        .a_10_(N101), .a_9_(N100), .a_8_(N99), .a_7_(N98), .a_6_(N97), .a_5_(
        N96), .a_4_(N95), .a_3_(n203), .quotient_9_(N114), .quotient_8_(N113), 
        .quotient_7_(N112), .quotient_6_(N111), .quotient_5_(N110), 
        .quotient_4_(N109), .quotient_3_(N108), .quotient_2_(N107), 
        .quotient_1_(N106), .quotient_0_(N105) );
  functional_unit_DW01_inc_1 add_93 ( .SUM({N335, N334, N333, N332, N331, N330, 
        N329, N328, N339}), .A_7_(x_guess[7]), .A_6_(x_guess[6]), .A_5_(
        x_guess[5]), .A_4_(x_guess[4]), .A_3_(x_guess[3]), .A_2_(x_guess[2]), 
        .A_1_(x_guess[1]), .A_0_(x_guess[0]) );
  functional_unit_DW01_add_4 add_54 ( .A_7_(lower[7]), .A_6_(lower[6]), .A_5_(
        lower[5]), .A_4_(lower[4]), .A_3_(lower[3]), .A_2_(lower[2]), .A_1_(
        lower[1]), .A_0_(lower[0]), .B_7_(upper[7]), .B_6_(upper[6]), .B_5_(
        upper[5]), .B_4_(upper[4]), .B_3_(upper[3]), .B_2_(upper[2]), .B_1_(
        upper[1]), .B_0_(upper[0]), .SUM_8_(N30), .SUM_7_(N29), .SUM_6_(N28), 
        .SUM_5_(N27), .SUM_4_(N26), .SUM_3_(N25), .SUM_2_(N24), .SUM_1_(N34)
         );
  functional_unit_DW01_inc_2 add_66 ( .A({N30, N29, N28, N27, N26, N25, N24, 
        N34}), .SUM({N144, N143, N142, N141, N140, N139, N138, N137}) );
  ADDHX1 mult_55_U9 ( .A(N34), .B(N24), .CO(mult_55_n8), .S(N35) );
  ADDFX1 mult_55_U8 ( .A(N25), .B(N24), .CI(mult_55_n8), .CO(mult_55_n7), .S(
        N36) );
  ADDFX1 mult_55_U7 ( .A(N26), .B(N25), .CI(mult_55_n7), .CO(mult_55_n6), .S(
        N37) );
  ADDFX1 mult_55_U6 ( .A(N27), .B(N26), .CI(mult_55_n6), .CO(mult_55_n5), .S(
        N38) );
  ADDFX1 mult_55_U5 ( .A(N28), .B(N27), .CI(mult_55_n5), .CO(mult_55_n4), .S(
        N39) );
  ADDFX1 mult_55_U4 ( .A(N29), .B(N28), .CI(mult_55_n4), .CO(mult_55_n3), .S(
        N40) );
  ADDFX1 mult_55_U3 ( .A(N30), .B(N29), .CI(mult_55_n3), .CO(mult_55_n2), .S(
        N41) );
  ADDHX1 mult_55_U2 ( .A(N30), .B(mult_55_n2), .CO(N43), .S(N42) );
  functional_unit_DW01_sub_7 sub_83 ( .A({n201, n200, n199, n198, n197, n196, 
        n194, n193, n191, n190}), .B({N294, N293, N292, N291, N290, N289, N288, 
        N287, N286, N285}), .DIFF({N304, N303, N302, N301, N300, N299, N298, 
        N297, N296, N295}) );
  functional_unit_DW_div_uns_10 div_82 ( .a_13_(N266), .a_12_(N265), .a_11_(
        N264), .a_10_(N263), .a_9_(N262), .a_8_(N261), .a_7_(N260), .a_6_(N259), .a_5_(N258), .a_4_(N257), .a_3_(x_guess[0]), .quotient_9_(N294), 
        .quotient_8_(N293), .quotient_7_(N292), .quotient_6_(N291), 
        .quotient_5_(N290), .quotient_4_(N289), .quotient_3_(N288), 
        .quotient_2_(N287), .quotient_1_(N286), .quotient_0_(N285) );
  MDFFHQX1 upper_reg_7_ ( .D0(n169), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[7]) );
  MDFFHQX1 upper_reg_6_ ( .D0(n166), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[6]) );
  MDFFHQX1 upper_reg_5_ ( .D0(n165), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[5]) );
  MDFFHQX1 upper_reg_4_ ( .D0(n164), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[4]) );
  MDFFHQX1 upper_reg_3_ ( .D0(n163), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[3]) );
  MDFFHQX1 upper_reg_2_ ( .D0(n162), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[2]) );
  MDFFHQX1 upper_reg_1_ ( .D0(n161), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[1]) );
  MDFFHQX1 upper_reg_0_ ( .D0(n170), .D1(1'b1), .S0(n596), .CK(clk), .Q(
        upper[0]) );
  DFFTRXL state_reg_0_ ( .D(n167), .RN(rst_n), .CK(clk), .Q(state[0]), .QN(
        n188) );
  DFFTRXL state_reg_1_ ( .D(n168), .RN(rst_n), .CK(clk), .Q(state[1]), .QN(
        n960) );
  DFFTRXL lower_reg_6_ ( .D(n154), .RN(rst_n), .CK(clk), .Q(lower[6]), .QN(
        n492) );
  DFFTRXL lower_reg_7_ ( .D(n153), .RN(rst_n), .CK(clk), .Q(lower[7]), .QN()
         );
  DFFTRXL lower_reg_5_ ( .D(n155), .RN(rst_n), .CK(clk), .Q(lower[5]), .QN(
        n3290) );
  DFFTRXL lower_reg_4_ ( .D(n156), .RN(rst_n), .CK(clk), .Q(lower[4]), .QN(
        n337) );
  DFFTRXL lower_reg_3_ ( .D(n157), .RN(rst_n), .CK(clk), .Q(lower[3]), .QN(
        n2650) );
  DFFTRXL lower_reg_2_ ( .D(n158), .RN(rst_n), .CK(clk), .Q(lower[2]), .QN(
        n325) );
  DFFTRXL lower_reg_1_ ( .D(n159), .RN(rst_n), .CK(clk), .Q(lower[1]), .QN(
        n2610) );
  DFFTRXL lower_reg_0_ ( .D(n160), .RN(rst_n), .CK(clk), .Q(lower[0]), .QN(
        n255) );
  DFFTRXL x_guess_reg_7_ ( .D(n145), .RN(rst_n), .CK(clk), .Q(x_guess[7]), 
        .QN() );
  DFFTRXL x_guess_reg_0_ ( .D(n1520), .RN(rst_n), .CK(clk), .Q(), .QN(n203) );
  DFFTRXL x_guess_reg_1_ ( .D(n1510), .RN(rst_n), .CK(clk), .Q(x_guess[1]), 
        .QN(n2580) );
  DFFTRXL x_guess_reg_4_ ( .D(n1480), .RN(rst_n), .CK(clk), .Q(x_guess[4]), 
        .QN(n3580) );
  DFFTRXL x_guess_reg_5_ ( .D(n1470), .RN(rst_n), .CK(clk), .Q(x_guess[5]), 
        .QN(n3660) );
  DFFTRXL x_guess_reg_3_ ( .D(n1490), .RN(rst_n), .CK(clk), .Q(x_guess[3]), 
        .QN(n269) );
  DFFTRXL x_guess_reg_6_ ( .D(n1460), .RN(rst_n), .CK(clk), .Q(x_guess[6]), 
        .QN(n3730) );
  DFFTRXL x_guess_reg_2_ ( .D(n1500), .RN(rst_n), .CK(clk), .Q(x_guess[2]), 
        .QN(n187) );
  NAND2BX2 U107 ( .AN(n3020), .B(n2990), .Y(n3000) );
  OAI2BB1X1 U108 ( .A0N(n3880), .A1N(n3870), .B0(n3860), .Y(N102) );
  OAI31X1 U109 ( .A0(n315), .A1(n3130), .A2(n3120), .B0(n3110), .Y(N260) );
  MXI2X1 U110 ( .A(n3560), .B(n3550), .S0(n3540), .Y(n171) );
  AOI21BX2 U111 ( .A0(N311), .A1(n218), .B0N(n224), .Y(n172) );
  OAI2BB1X1 U112 ( .A0N(n181), .A1N(n3100), .B0(n3090), .Y(N262) );
  OAI31X1 U113 ( .A0(n3060), .A1(n3080), .A2(n185), .B0(n3050), .Y(N264) );
  OAI2BB1X1 U114 ( .A0N(n183), .A1N(n317), .B0(n316), .Y(N258) );
  INVX2 U115 ( .A(n203), .Y(x_guess[0]) );
  BUFX2 U116 ( .A(y_input[8]), .Y(n200) );
  BUFX2 U117 ( .A(y_input[7]), .Y(n199) );
  INVX2 U118 ( .A(N62), .Y(n565) );
  INVX2 U119 ( .A(N63), .Y(n566) );
  INVX2 U120 ( .A(N66), .Y(n569) );
  INVX2 U121 ( .A(N59), .Y(n564) );
  INVX2 U122 ( .A(N108), .Y(n431) );
  INVX2 U123 ( .A(N67), .Y(n570) );
  INVX2 U124 ( .A(n409), .Y(n3420) );
  INVX2 U125 ( .A(n336), .Y(n406) );
  INVX2 U126 ( .A(n3090), .Y(n3080) );
  XNOR2X1 U127 ( .A(n315), .B(n3140), .Y(N259) );
  AOI21BX2 U128 ( .A0(n405), .A1(n3300), .B0N(n338), .Y(n173) );
  AOI21BX2 U129 ( .A0(n405), .A1(n251), .B0N(n338), .Y(n174) );
  AOI21BX2 U130 ( .A0(n405), .A1(n3390), .B0N(n338), .Y(n175) );
  NAND2BX2 U131 ( .AN(n249), .B(n176), .Y(n409) );
  INVX2 U132 ( .A(n251), .Y(n256) );
  INVX2 U133 ( .A(n242), .Y(n236) );
  NAND2BX2 U134 ( .AN(n245), .B(n462), .Y(n336) );
  INVX2 U135 ( .A(n235), .Y(n221) );
  NAND2BX2 U136 ( .AN(n3410), .B(n256), .Y(n252) );
  INVX2 U137 ( .A(n3410), .Y(n405) );
  OR2X2 U138 ( .A(n181), .B(n3100), .Y(n3090) );
  INVX2 U139 ( .A(n3050), .Y(n3040) );
  INVX2 U140 ( .A(N297), .Y(n228) );
  INVX2 U141 ( .A(N298), .Y(n229) );
  OAI2BB1X1 U142 ( .A0N(n3140), .A1N(n316), .B0(n3120), .Y(n3110) );
  OR2X2 U143 ( .A(n182), .B(n3110), .Y(n3100) );
  INVX2 U144 ( .A(n3130), .Y(n3140) );
  XNOR2X1 U145 ( .A(n3040), .B(n3030), .Y(N265) );
  INVX2 U146 ( .A(N299), .Y(n220) );
  XNOR2X1 U147 ( .A(n3080), .B(n3070), .Y(N263) );
  OAI2BB1X1 U148 ( .A0N(n182), .A1N(n3110), .B0(n3100), .Y(N261) );
  INVX2 U149 ( .A(n316), .Y(n315) );
  INVX2 U150 ( .A(n247), .Y(n462) );
  AOI22XL U151 ( .A0(n592), .A1(n573), .B0(n573), .B1(n575), .Y(n585) );
  INVX2 U152 ( .A(n571), .Y(n592) );
  INVX2 U153 ( .A(N392), .Y(n588) );
  INVX2 U154 ( .A(n250), .Y(n338) );
  OAI221X2 U155 ( .A0(n176), .A1(n249), .B0(n248), .B1(n247), .C0(n453), .Y(
        n250) );
  INVX2 U156 ( .A(n245), .Y(n248) );
  AND2X2 U157 ( .A(N208), .B(N395), .Y(n176) );
  INVX2 U158 ( .A(n3860), .Y(n3850) );
  INVX2 U159 ( .A(n3910), .Y(n3900) );
  AOI21BX2 U160 ( .A0(n405), .A1(n319), .B0N(n338), .Y(n177) );
  INVX2 U161 ( .A(n3600), .Y(n3540) );
  NAND2BX2 U162 ( .AN(x_guess[0]), .B(n274), .Y(n4000) );
  INVX2 U163 ( .A(n575), .Y(n593) );
  INVX2 U164 ( .A(N384), .Y(n595) );
  INVX2 U165 ( .A(N391), .Y(n455) );
  OAI2BB1X1 U166 ( .A0N(n452), .A1N(N339), .B0(add_93_2_carry[5]), .Y(N354) );
  INVX2 U167 ( .A(n451), .Y(n452) );
  XNOR2X1 U168 ( .A(add_93_2_carry[7]), .B(N343), .Y(N357) );
  XNOR2X1 U169 ( .A(add_93_2_carry[11]), .B(N347), .Y(N361) );
  INVX2 U170 ( .A(N346), .Y(n447) );
  XNOR2X1 U171 ( .A(add_93_2_carry[6]), .B(n448), .Y(N356) );
  INVX2 U172 ( .A(N342), .Y(n448) );
  XNOR2X1 U173 ( .A(add_93_2_carry[8]), .B(N344), .Y(N358) );
  XNOR2X1 U174 ( .A(n450), .B(n449), .Y(N355) );
  INVX2 U175 ( .A(add_93_2_carry[5]), .Y(n450) );
  OR2X2 U176 ( .A(N345), .B(add_93_2_carry[9]), .Y(add_93_2_carry[10]) );
  INVX2 U177 ( .A(N380), .Y(n591) );
  NAND2BX2 U178 ( .AN(n211), .B(n210), .Y(n245) );
  OAI221X2 U179 ( .A0(n534), .A1(n535), .B0(N76), .B1(n209), .C0(n2080), .Y(
        n210) );
  OAI32XL U180 ( .A0(N123), .A1(n543), .A2(n533), .B0(N124), .B1(n544), .Y(
        n211) );
  NAND2BX2 U181 ( .AN(N304), .B(N314), .Y(n242) );
  NAND2BX2 U182 ( .AN(n319), .B(n3450), .Y(n3300) );
  NAND2BX2 U183 ( .AN(n3300), .B(n3570), .Y(n3390) );
  NAND2BX2 U184 ( .AN(n244), .B(n243), .Y(n251) );
  AOI221XL U185 ( .A0(N313), .A1(n239), .B0(n238), .B1(n237), .C0(n236), .Y(
        n244) );
  AOI32XL U186 ( .A0(N303), .A1(n242), .A2(n241), .B0(N304), .B1(n240), .Y(
        n243) );
  INVX2 U187 ( .A(N303), .Y(n239) );
  XOR2X1 U188 ( .A(add_93_2_carry[12]), .B(N348), .Y(N362) );
  AOI22XL U189 ( .A0(n541), .A1(n524), .B0(n524), .B1(n526), .Y(n535) );
  AOI32XL U190 ( .A0(N74), .A1(n459), .A2(n523), .B0(n537), .B1(N75), .Y(n524)
         );
  INVX2 U191 ( .A(n526), .Y(n542) );
  INVX2 U192 ( .A(N314), .Y(n240) );
  AOI32XL U193 ( .A0(n172), .A1(n235), .A2(n234), .B0(N302), .B1(n233), .Y(
        n237) );
  OA21X1 U194 ( .A0(N299), .A1(n232), .B0(n231), .Y(n234) );
  INVX2 U195 ( .A(N312), .Y(n233) );
  INVX2 U196 ( .A(N309), .Y(n232) );
  NAND2BX2 U197 ( .AN(N302), .B(N312), .Y(n224) );
  INVX2 U198 ( .A(N301), .Y(n218) );
  NAND2BX2 U199 ( .AN(N339), .B(n451), .Y(add_93_2_carry[5]) );
  NOR3BX1 U200 ( .AN(n444), .B(n443), .C(n442), .Y(N364) );
  INVX2 U201 ( .A(add_93_2_carry[13]), .Y(n442) );
  AOI32XL U202 ( .A0(N301), .A1(n224), .A2(n223), .B0(n172), .B1(n222), .Y(
        n238) );
  INVX2 U203 ( .A(N311), .Y(n223) );
  OAI32XL U204 ( .A0(N309), .A1(n221), .A2(n220), .B0(N310), .B1(n219), .Y(
        n222) );
  INVX2 U205 ( .A(N300), .Y(n219) );
  INVX2 U206 ( .A(N339), .Y(n204) );
  INVX2 U207 ( .A(N388), .Y(n587) );
  INVX2 U208 ( .A(N379), .Y(n590) );
  INVX2 U209 ( .A(N121), .Y(n459) );
  INVX2 U210 ( .A(N313), .Y(n241) );
  INVX2 U211 ( .A(N122), .Y(n537) );
  INVX2 U212 ( .A(N383), .Y(n594) );
  OAI31XL U213 ( .A0(N105), .A1(N106), .A2(n436), .B0(n435), .Y(n501) );
  INVX2 U214 ( .A(n507), .Y(n520) );
  NOR2X2 U215 ( .A(N107), .B(n561), .Y(n500) );
  NAND2BX2 U216 ( .AN(N300), .B(N310), .Y(n235) );
  INVX2 U217 ( .A(N387), .Y(n454) );
  INVX2 U218 ( .A(n444), .Y(n445) );
  INVX2 U219 ( .A(N123), .Y(n209) );
  NAND2BX2 U220 ( .AN(N298), .B(N308), .Y(n230) );
  OAI2BB2X2 U221 ( .B0(n178), .B1(n179), .A0N(n230), .A1N(n180), .Y(n231) );
  OAI21X1 U222 ( .A0(N295), .A1(n225), .B0(n230), .Y(n178) );
  OAI22X1 U223 ( .A0(N297), .A1(n227), .B0(N296), .B1(n226), .Y(n179) );
  OAI22X1 U224 ( .A0(N308), .A1(n229), .B0(N307), .B1(n228), .Y(n180) );
  INVX2 U225 ( .A(N118), .Y(n536) );
  XNOR2X1 U226 ( .A(add_55_carry[11]), .B(N42), .Y(N55) );
  INVX2 U227 ( .A(N307), .Y(n227) );
  OAI2BB1X1 U228 ( .A0N(N296), .A1N(n226), .B0(N305), .Y(n225) );
  INVX2 U229 ( .A(N306), .Y(n226) );
  INVX2 U230 ( .A(N77), .Y(n544) );
  INVX2 U231 ( .A(N117), .Y(n458) );
  INVX2 U232 ( .A(N76), .Y(n543) );
  INVX2 U233 ( .A(N73), .Y(n540) );
  OAI31X1 U234 ( .A0(n499), .A1(n513), .A2(n510), .B0(n498), .Y(n213) );
  INVX2 U235 ( .A(n508), .Y(n521) );
  NAND2BX2 U236 ( .AN(n216), .B(n217), .Y(n249) );
  OR2X2 U237 ( .A(n217), .B(n216), .Y(n3410) );
  OAI2B1X1 U238 ( .A1N(n464), .A0(N135), .B0(n130), .Y(n206) );
  NOR2BX1 U239 ( .AN(n462), .B(N135), .Y(n133) );
  INVX2 U240 ( .A(N72), .Y(n539) );
  INVX2 U241 ( .A(N376), .Y(n589) );
  NAND2BXL U242 ( .AN(n247), .B(N135), .Y(n205) );
  NAND2BX1 U243 ( .AN(N135), .B(n130), .Y(n131) );
  INVX2 U244 ( .A(N69), .Y(n538) );
  NAND2BX2 U245 ( .AN(n431), .B(n518), .Y(n503) );
  INVX2 U246 ( .A(n432), .Y(n505) );
  NAND2BX2 U247 ( .AN(n518), .B(n431), .Y(n432) );
  INVX2 U248 ( .A(n3990), .Y(n3980) );
  INVX2 U249 ( .A(n3070), .Y(n3060) );
  NOR3BX1 U250 ( .AN(n3030), .B(n3020), .C(n3040), .Y(N266) );
  OAI2BB1X1 U251 ( .A0N(n3070), .A1N(n3090), .B0(n185), .Y(n3050) );
  XOR3XL U252 ( .A(n2910), .B(n2880), .C(n2890), .Y(n181) );
  INVX2 U253 ( .A(n2970), .Y(n2920) );
  XNOR3XL U254 ( .A(n2980), .B(n2960), .C(n2970), .Y(n3120) );
  INVX2 U255 ( .A(n270), .Y(n268) );
  XNOR3XL U256 ( .A(n2920), .B(n2910), .C(n2900), .Y(n182) );
  XOR3XL U257 ( .A(n2940), .B(n2980), .C(n2930), .Y(n3130) );
  OR2X2 U258 ( .A(n183), .B(n317), .Y(n316) );
  XNOR3XL U259 ( .A(n2950), .B(n2940), .C(n4000), .Y(n183) );
  INVX2 U260 ( .A(n274), .Y(n2950) );
  XOR3XL U261 ( .A(n2870), .B(n2860), .C(n2850), .Y(n3070) );
  NAND2BX2 U262 ( .AN(n270), .B(n3650), .Y(n267) );
  INVX2 U263 ( .A(n2890), .Y(n2870) );
  XNOR2X1 U264 ( .A(x_guess[0]), .B(n2950), .Y(N95) );
  INVX2 U265 ( .A(n283), .Y(n3030) );
  NAND2BX2 U266 ( .AN(n2860), .B(n3010), .Y(n283) );
  INVX2 U267 ( .A(n212), .Y(n510) );
  NAND2BX2 U268 ( .AN(N110), .B(y_input[5]), .Y(n212) );
  NAND2BX2 U269 ( .AN(y_input[5]), .B(N110), .Y(n508) );
  INVX2 U270 ( .A(n437), .Y(n517) );
  INVX2 U271 ( .A(n4020), .Y(n4030) );
  NAND2BX2 U272 ( .AN(n463), .B(n464), .Y(n247) );
  AOI21X1 U273 ( .A0(n463), .A1(n464), .B0(n1240), .Y(n130) );
  INVX2 U274 ( .A(n453), .Y(n1240) );
  XOR2X1 U275 ( .A(n3850), .B(n3840), .Y(N103) );
  XNOR2X1 U276 ( .A(n3900), .B(n3890), .Y(N101) );
  XNOR2X1 U277 ( .A(n3980), .B(n3970), .Y(N97) );
  OAI2BB1X1 U278 ( .A0N(n186), .A1N(n4000), .B0(n3990), .Y(N96) );
  OAI31X1 U279 ( .A0(n3980), .A1(n396), .A2(n171), .B0(n3950), .Y(N98) );
  INVX2 U280 ( .A(n3970), .Y(n396) );
  OAI2BB1X1 U281 ( .A0N(n3940), .A1N(n3950), .B0(n3930), .Y(N99) );
  OAI2BB1X1 U282 ( .A0N(n3920), .A1N(n3930), .B0(n3910), .Y(N100) );
  OR2X2 U283 ( .A(n3930), .B(n3920), .Y(n3910) );
  OR2X2 U284 ( .A(n3880), .B(n3870), .Y(n3860) );
  OAI2BB1X1 U285 ( .A0N(n3610), .A1N(n3600), .B0(n3590), .Y(n3690) );
  OAI2BB1X1 U286 ( .A0N(n3690), .A1N(n3680), .B0(n3670), .Y(n3750) );
  OAI2BB1X1 U287 ( .A0N(n353), .A1N(n352), .B0(n351), .Y(n3600) );
  INVX2 U288 ( .A(n3800), .Y(n3880) );
  NAND2BX2 U289 ( .AN(n3900), .B(n3890), .Y(n3800) );
  OR2X2 U290 ( .A(n3950), .B(n3940), .Y(n3930) );
  OAI2BB1X1 U291 ( .A0N(n3970), .A1N(n3990), .B0(n171), .Y(n3950) );
  OAI2BB1X1 U292 ( .A0N(n3760), .A1N(n3750), .B0(n3740), .Y(n3820) );
  OR2X2 U293 ( .A(n186), .B(n4000), .Y(n3990) );
  AOI21BX2 U294 ( .A0(n3830), .A1(n3820), .B0N(n3810), .Y(n184) );
  NAND2BX2 U295 ( .AN(n2660), .B(n349), .Y(n274) );
  INVX2 U296 ( .A(n273), .Y(n2660) );
  INVX2 U297 ( .A(n352), .Y(n3450) );
  NOR2X2 U298 ( .A(n3850), .B(n3840), .Y(N104) );
  OAI211XL U299 ( .A0(n492), .A1(n4020), .B0(n3440), .C0(n3430), .Y(n1460) );
  AOI22XL U300 ( .A0(N29), .A1(n406), .B0(N403), .B1(n3420), .Y(n3430) );
  OA21X1 U301 ( .A0(n175), .A1(n3730), .B0(n4010), .Y(n3440) );
  INVX2 U302 ( .A(n3610), .Y(n350) );
  XNOR2X1 U303 ( .A(add_93_2_carry[13]), .B(n446), .Y(N363) );
  NAND2BX2 U304 ( .AN(n445), .B(N335), .Y(n446) );
  XOR3XL U305 ( .A(N329), .B(N328), .C(n428), .Y(n449) );
  XOR3XL U306 ( .A(N330), .B(N329), .C(n427), .Y(N342) );
  INVX2 U307 ( .A(n3680), .Y(n3570) );
  NAND2BX2 U308 ( .AN(n273), .B(n256), .Y(n319) );
  NAND3BX2 U309 ( .AN(n3410), .B(n340), .C(n3730), .Y(n4010) );
  INVX2 U310 ( .A(n3390), .Y(n340) );
  XOR3XL U311 ( .A(N331), .B(N330), .C(n426), .Y(N343) );
  OAI2BB1X1 U312 ( .A0N(N329), .A1N(N328), .B0(n428), .Y(n427) );
  INVX2 U313 ( .A(n3760), .Y(n3650) );
  XNOR2X1 U314 ( .A(N328), .B(N339), .Y(n451) );
  NAND2BX2 U315 ( .AN(n204), .B(N328), .Y(n428) );
  OAI2BB1X1 U316 ( .A0N(n3670), .A1N(n3390), .B0(n405), .Y(n326) );
  OAI2BB1X1 U317 ( .A0N(N330), .A1N(N329), .B0(n411), .Y(n426) );
  OAI2BB1X1 U318 ( .A0N(n410), .A1N(n412), .B0(n427), .Y(n411) );
  INVX2 U319 ( .A(N329), .Y(n410) );
  INVX2 U320 ( .A(N330), .Y(n412) );
  XOR3XL U321 ( .A(N332), .B(N331), .C(n425), .Y(N344) );
  OAI2BB1X1 U322 ( .A0N(N331), .A1N(N330), .B0(n413), .Y(n425) );
  OAI2BB1X1 U323 ( .A0N(n412), .A1N(n414), .B0(n426), .Y(n413) );
  XOR3XL U324 ( .A(N334), .B(N333), .C(n423), .Y(N346) );
  INVX2 U325 ( .A(N331), .Y(n414) );
  OAI2BB1X1 U326 ( .A0N(N333), .A1N(N332), .B0(n417), .Y(n423) );
  OAI2BB1X1 U327 ( .A0N(n416), .A1N(n418), .B0(n424), .Y(n417) );
  OAI2BB1X1 U328 ( .A0N(N332), .A1N(N331), .B0(n415), .Y(n424) );
  OAI2BB1X1 U329 ( .A0N(n414), .A1N(n416), .B0(n425), .Y(n415) );
  AOI32XL U330 ( .A0(n441), .A1(n440), .A2(n514), .B0(n200), .B1(n439), .Y(
        n516) );
  INVX2 U331 ( .A(N113), .Y(n439) );
  OAI211XL U332 ( .A0(n512), .A1(n513), .B0(n438), .C0(n511), .Y(n440) );
  INVX2 U333 ( .A(N332), .Y(n416) );
  XOR3XL U334 ( .A(N333), .B(N332), .C(n424), .Y(N345) );
  INVX2 U335 ( .A(n3810), .Y(n4040) );
  OAI2BB1X1 U336 ( .A0N(n351), .A1N(n3300), .B0(n405), .Y(n2620) );
  INVX2 U337 ( .A(N333), .Y(n418) );
  XOR3XL U338 ( .A(N335), .B(N334), .C(n422), .Y(N347) );
  OAI2BB1X1 U339 ( .A0N(N334), .A1N(N333), .B0(n419), .Y(n422) );
  OAI2BB1X1 U340 ( .A0N(n418), .A1N(n420), .B0(n423), .Y(n419) );
  XNOR2X1 U341 ( .A(N335), .B(n445), .Y(N348) );
  OAI2BB1X1 U342 ( .A0N(N335), .A1N(N334), .B0(n421), .Y(n444) );
  OAI2BB1X1 U343 ( .A0N(n420), .A1N(n443), .B0(n422), .Y(n421) );
  INVX2 U344 ( .A(N334), .Y(n420) );
  OAI2BB1X1 U345 ( .A0N(n349), .A1N(n319), .B0(n405), .Y(n2570) );
  OAI2B1X1 U346 ( .A1N(n190), .A0(N105), .B0(N106), .Y(n502) );
  INVX2 U347 ( .A(N335), .Y(n443) );
  NAND2BX2 U348 ( .AN(n193), .B(N107), .Y(n494) );
  OAI211XL U349 ( .A0(N106), .A1(n435), .B0(n456), .C0(n430), .Y(n493) );
  AO2B2X1 U350 ( .B0(N105), .B1(n436), .A0(N106), .A1N(n191), .Y(n430) );
  INVX2 U351 ( .A(n215), .Y(n217) );
  OAI2B1X1 U352 ( .A1N(n515), .A0(n214), .B0(n437), .Y(n215) );
  AOI32XL U353 ( .A0(n213), .A1(n438), .A2(n441), .B0(n519), .B1(N113), .Y(
        n214) );
  INVX2 U354 ( .A(n200), .Y(n519) );
  INVX2 U355 ( .A(n549), .Y(n568) );
  XNOR2X1 U356 ( .A(N107), .B(n192), .Y(n456) );
  INVX2 U357 ( .A(n545), .Y(n567) );
  OAI2BB1X1 U358 ( .A0N(n2910), .A1N(n2970), .B0(n279), .Y(n2880) );
  OAI2BB1X1 U359 ( .A0N(n2920), .A1N(n280), .B0(n2900), .Y(n279) );
  OAI2BB1X1 U360 ( .A0N(n2980), .A1N(n276), .B0(n275), .Y(n2960) );
  OAI2BB1X1 U361 ( .A0N(n2940), .A1N(n277), .B0(n2930), .Y(n275) );
  OAI2BB1X1 U362 ( .A0N(n2980), .A1N(n2970), .B0(n278), .Y(n2900) );
  OAI2BB1X1 U363 ( .A0N(n2920), .A1N(n277), .B0(n2960), .Y(n278) );
  INVX2 U364 ( .A(n277), .Y(n2980) );
  INVX2 U365 ( .A(n272), .Y(n271) );
  OAI211XL U366 ( .A0(n271), .A1(n3580), .B0(n3590), .C0(n270), .Y(n2970) );
  NAND2BX2 U367 ( .AN(n272), .B(n350), .Y(n270) );
  OAI2BB1X1 U368 ( .A0N(n276), .A1N(n274), .B0(n4000), .Y(n2930) );
  INVX2 U369 ( .A(n280), .Y(n2910) );
  INVX2 U370 ( .A(n276), .Y(n2940) );
  INVX2 U371 ( .A(n433), .Y(n495) );
  NAND2BX2 U372 ( .AN(n196), .B(N109), .Y(n433) );
  OAI2BB1X1 U373 ( .A0N(n2990), .A1N(n2890), .B0(n282), .Y(n3010) );
  OAI2BB1X1 U374 ( .A0N(n2860), .A1N(n2870), .B0(n2850), .Y(n282) );
  OAI2BB1X1 U375 ( .A0N(n2910), .A1N(n2890), .B0(n281), .Y(n2850) );
  OAI2BB1X1 U376 ( .A0N(n2870), .A1N(n280), .B0(n2880), .Y(n281) );
  XOR2X1 U377 ( .A(n3010), .B(n3000), .Y(n185) );
  OAI211XL U378 ( .A0(n268), .A1(n3730), .B0(n3740), .C0(n267), .Y(n2890) );
  INVX2 U379 ( .A(n2990), .Y(n2860) );
  INVX2 U380 ( .A(n434), .Y(n509) );
  NAND2BX2 U381 ( .AN(N109), .B(n196), .Y(n434) );
  NAND2BX2 U382 ( .AN(n203), .B(N95), .Y(n317) );
  INVX2 U383 ( .A(n284), .Y(n3020) );
  INVX2 U384 ( .A(n199), .Y(n563) );
  INVX2 U385 ( .A(n429), .Y(n497) );
  NAND2BX2 U386 ( .AN(n198), .B(N111), .Y(n429) );
  NAND2BX2 U387 ( .AN(N111), .B(n198), .Y(n511) );
  NAND2BX2 U388 ( .AN(N112), .B(n199), .Y(n438) );
  NAND2BX2 U389 ( .AN(n199), .B(N112), .Y(n514) );
  XNOR2X1 U390 ( .A(n200), .B(N113), .Y(n441) );
  INVX2 U391 ( .A(N34), .Y(n461) );
  OAI2BB1X1 U392 ( .A0N(n318), .A1N(n203), .B0(n317), .Y(N257) );
  INVX2 U393 ( .A(N95), .Y(n318) );
  NAND2BX2 U394 ( .AN(n201), .B(N114), .Y(n437) );
  NAND2BX2 U395 ( .AN(N114), .B(n201), .Y(n515) );
  NOR2X2 U396 ( .A(N18), .B(N19), .Y(n126) );
  NAND2BX2 U397 ( .AN(n246), .B(n126), .Y(n216) );
  NAND2BX2 U398 ( .AN(n246), .B(n460), .Y(n4020) );
  INVX2 U399 ( .A(n207), .Y(n460) );
  NAND2BX2 U400 ( .AN(N18), .B(N19), .Y(n207) );
  INVX2 U401 ( .A(N18), .Y(n463) );
  INVX2 U402 ( .A(n246), .Y(n464) );
  NAND2BX2 U403 ( .AN(done), .B(n246), .Y(n453) );
  INVX2 U404 ( .A(n191), .Y(n435) );
  INVX2 U405 ( .A(n190), .Y(n436) );
  INVX2 U406 ( .A(n198), .Y(n562) );
  INVX2 U407 ( .A(n194), .Y(n518) );
  INVX2 U408 ( .A(n192), .Y(n561) );
  OAI221X2 U409 ( .A0(n4020), .A1(n325), .B0(n336), .B1(n324), .C0(n323), .Y(
        n1500) );
  INVX2 U410 ( .A(N25), .Y(n324) );
  AOI21BX2 U411 ( .A0(N399), .A1(n3420), .B0N(n322), .Y(n323) );
  NAND2BX2 U412 ( .AN(n203), .B(x_guess[1]), .Y(n349) );
  MX2X1 U413 ( .A(n3720), .B(n3710), .S0(n3700), .Y(n3920) );
  XNOR2X1 U414 ( .A(x_guess[6]), .B(n3660), .Y(n3710) );
  NAND2BX2 U415 ( .AN(n3650), .B(n3740), .Y(n3720) );
  INVX2 U416 ( .A(n3750), .Y(n3700) );
  OAI2BB1X1 U417 ( .A0N(x_guess[2]), .A1N(x_guess[1]), .B0(n349), .Y(n353) );
  MX2X1 U418 ( .A(n321), .B(n177), .S0(x_guess[2]), .Y(n322) );
  NAND2BX2 U419 ( .AN(n3410), .B(n320), .Y(n321) );
  INVX2 U420 ( .A(n319), .Y(n320) );
  OAI221X2 U421 ( .A0(n4020), .A1(n337), .B0(n336), .B1(n3350), .C0(n3340), 
        .Y(n1480) );
  INVX2 U422 ( .A(N27), .Y(n3350) );
  AOI21BX2 U423 ( .A0(N401), .A1(n3420), .B0N(n3330), .Y(n3340) );
  MX2X1 U424 ( .A(n3320), .B(n173), .S0(x_guess[4]), .Y(n3330) );
  NAND2BX2 U425 ( .AN(n3410), .B(n3310), .Y(n3320) );
  INVX2 U426 ( .A(n3300), .Y(n3310) );
  OAI221X2 U427 ( .A0(n4020), .A1(n255), .B0(n461), .B1(n336), .C0(n254), .Y(
        n1520) );
  AOI21BX2 U428 ( .A0(N397), .A1(n3420), .B0N(n253), .Y(n254) );
  MX2X1 U429 ( .A(n252), .B(n174), .S0(x_guess[0]), .Y(n253) );
  MX2X1 U430 ( .A(n3640), .B(n3630), .S0(n3620), .Y(n3940) );
  XNOR2X1 U431 ( .A(x_guess[5]), .B(n3580), .Y(n3630) );
  NAND2BX2 U432 ( .AN(n3570), .B(n3670), .Y(n3640) );
  INVX2 U433 ( .A(n3690), .Y(n3620) );
  XNOR2X1 U434 ( .A(x_guess[3]), .B(n3580), .Y(n3550) );
  NAND2BX2 U435 ( .AN(n350), .B(n3590), .Y(n3560) );
  MX2X1 U436 ( .A(n3790), .B(n3780), .S0(n3770), .Y(n3890) );
  XNOR2X1 U437 ( .A(x_guess[7]), .B(n3730), .Y(n3780) );
  NAND2BX2 U438 ( .AN(n4040), .B(n3830), .Y(n3790) );
  INVX2 U439 ( .A(n3820), .Y(n3770) );
  XOR3XL U440 ( .A(n187), .B(x_guess[1]), .C(n349), .Y(n186) );
  NAND2BX2 U441 ( .AN(x_guess[3]), .B(n187), .Y(n352) );
  XNOR2X1 U442 ( .A(x_guess[7]), .B(n184), .Y(n3870) );
  NAND2BX2 U443 ( .AN(x_guess[1]), .B(n203), .Y(n273) );
  MX2X1 U444 ( .A(n3480), .B(n3470), .S0(n3460), .Y(n3970) );
  XNOR2X1 U445 ( .A(x_guess[3]), .B(n187), .Y(n3470) );
  INVX2 U446 ( .A(n353), .Y(n3460) );
  NAND2BX2 U447 ( .AN(n3450), .B(n351), .Y(n3480) );
  OAI2B11X2 U448 ( .A1N(N404), .A0(n409), .B0(n408), .C0(n407), .Y(n145) );
  AOI222XL U449 ( .A0(N30), .A1(n406), .B0(n405), .B1(n4040), .C0(lower[7]), 
        .C1(n4030), .Y(n407) );
  MX2X1 U450 ( .A(n4010), .B(n175), .S0(x_guess[7]), .Y(n408) );
  NAND2BX2 U451 ( .AN(n187), .B(x_guess[3]), .Y(n351) );
  OAI211XL U452 ( .A0(n4020), .A1(n3290), .B0(n3280), .C0(n327), .Y(n1470) );
  AOI22XL U453 ( .A0(N28), .A1(n406), .B0(N402), .B1(n3420), .Y(n327) );
  OA21X1 U454 ( .A0(n173), .A1(n3660), .B0(n326), .Y(n3280) );
  OAI211XL U455 ( .A0(n4020), .A1(n2650), .B0(n2640), .C0(n2630), .Y(n1490) );
  AOI22XL U456 ( .A0(N26), .A1(n406), .B0(N400), .B1(n3420), .Y(n2630) );
  OA21X1 U457 ( .A0(n177), .A1(n269), .B0(n2620), .Y(n2640) );
  OAI211XL U458 ( .A0(n4020), .A1(n2610), .B0(n2600), .C0(n2590), .Y(n1510) );
  AOI22XL U459 ( .A0(N24), .A1(n406), .B0(N398), .B1(n3420), .Y(n2590) );
  OA21X1 U460 ( .A0(n174), .A1(n2580), .B0(n2570), .Y(n2600) );
  NAND2BX2 U461 ( .AN(x_guess[3]), .B(n3580), .Y(n3610) );
  NAND2BX2 U462 ( .AN(n184), .B(x_guess[7]), .Y(n3840) );
  NAND2BX2 U463 ( .AN(n269), .B(x_guess[4]), .Y(n3590) );
  NAND2BX2 U464 ( .AN(x_guess[5]), .B(n3580), .Y(n3680) );
  NAND2BX2 U465 ( .AN(n3580), .B(x_guess[5]), .Y(n3670) );
  NAND2BX2 U466 ( .AN(x_guess[6]), .B(n3660), .Y(n3760) );
  NAND2BX2 U467 ( .AN(n3730), .B(x_guess[5]), .Y(n3740) );
  NAND2BX2 U468 ( .AN(n3730), .B(x_guess[7]), .Y(n3810) );
  NAND2BX2 U469 ( .AN(x_guess[7]), .B(n3730), .Y(n3830) );
  AO2B2X2 U470 ( .B0(lower[0]), .B1(n206), .A0(N137), .A1N(n205), .Y(n160) );
  AO2B2X2 U471 ( .B0(lower[1]), .B1(n206), .A0(N138), .A1N(n205), .Y(n159) );
  AO2B2X2 U472 ( .B0(lower[2]), .B1(n206), .A0(N139), .A1N(n205), .Y(n158) );
  AO2B2X2 U473 ( .B0(lower[3]), .B1(n206), .A0(N140), .A1N(n205), .Y(n157) );
  AO2B2X2 U474 ( .B0(lower[4]), .B1(n206), .A0(N141), .A1N(n205), .Y(n156) );
  AO2B2X2 U475 ( .B0(lower[5]), .B1(n206), .A0(N142), .A1N(n205), .Y(n155) );
  AO2B2X2 U476 ( .B0(lower[7]), .B1(n206), .A0(N144), .A1N(n205), .Y(n153) );
  OAI2BB1X1 U477 ( .A0N(upper[6]), .A1N(n131), .B0(n1380), .Y(n166) );
  AOI21X1 U478 ( .A0(N151), .A1(n133), .B0(done), .Y(n1380) );
  OAI2BB1X1 U479 ( .A0N(n131), .A1N(upper[7]), .B0(n1430), .Y(n169) );
  AOI21X1 U480 ( .A0(N152), .A1(n133), .B0(done), .Y(n1430) );
  OAI2BB1X1 U481 ( .A0N(upper[5]), .A1N(n131), .B0(n1370), .Y(n165) );
  AOI21X1 U482 ( .A0(N150), .A1(n133), .B0(done), .Y(n1370) );
  OAI2BB1X1 U483 ( .A0N(upper[4]), .A1N(n131), .B0(n136), .Y(n164) );
  AOI21X1 U484 ( .A0(N149), .A1(n133), .B0(done), .Y(n136) );
  OAI2BB1X1 U485 ( .A0N(upper[3]), .A1N(n131), .B0(n1350), .Y(n163) );
  AOI21X1 U486 ( .A0(N148), .A1(n133), .B0(done), .Y(n1350) );
  OAI2BB1X1 U487 ( .A0N(upper[2]), .A1N(n131), .B0(n134), .Y(n162) );
  AOI21X1 U488 ( .A0(N147), .A1(n133), .B0(done), .Y(n134) );
  OAI2BB1X1 U489 ( .A0N(upper[1]), .A1N(n131), .B0(n132), .Y(n161) );
  AOI21X1 U490 ( .A0(N146), .A1(n133), .B0(done), .Y(n132) );
  OAI2BB1X1 U491 ( .A0N(upper[0]), .A1N(n131), .B0(n1440), .Y(n170) );
  AOI21X1 U492 ( .A0(n461), .A1(n133), .B0(done), .Y(n1440) );
  AO2B2X2 U493 ( .B0(n206), .B1(lower[6]), .A0(N143), .A1N(n205), .Y(n154) );
  XNOR2X1 U494 ( .A(x_guess[3]), .B(n271), .Y(n277) );
  NAND2BX2 U495 ( .AN(x_guess[2]), .B(n2660), .Y(n272) );
  OAI2BB1X1 U496 ( .A0N(x_guess[2]), .A1N(n273), .B0(n272), .Y(n276) );
  XNOR2X1 U497 ( .A(x_guess[5]), .B(n268), .Y(n280) );
  OAI2BB1X1 U498 ( .A0N(x_guess[7]), .A1N(n267), .B0(n284), .Y(n2990) );
  OR2X2 U499 ( .A(x_guess[7]), .B(n267), .Y(n284) );
  OAI2B2X1 U500 ( .A1N(upper[7]), .A0(lower[7]), .B0(n485), .B1(n484), .Y(N18)
         );
  INVX2 U501 ( .A(upper[2]), .Y(n490) );
  INVX2 U502 ( .A(upper[1]), .Y(n491) );
  INVX2 U503 ( .A(upper[3]), .Y(n489) );
  OAI21X1 U504 ( .A0(n960), .A1(n1390), .B0(n1420), .Y(n168) );
  OAI21X1 U505 ( .A0(n126), .A1(n460), .B0(n464), .Y(n1420) );
  INVX2 U506 ( .A(upper[5]), .Y(n488) );
  OAI2BB2X2 U507 ( .B0(n188), .B1(n1390), .A0N(n1390), .A1N(n189), .Y(n167) );
  AO21X2 U508 ( .A0(N18), .A1(n464), .B0(n1410), .Y(n189) );
  NAND2X2 U509 ( .A(n960), .B(state[0]), .Y(n246) );
  NOR2X2 U510 ( .A(n960), .B(state[0]), .Y(done) );
  OAI2BB1X1 U511 ( .A0N(start), .A1N(n1410), .B0(n1240), .Y(n1390) );
  NOR2X2 U512 ( .A(state[1]), .B(state[0]), .Y(n1410) );
  BUFX2 U513 ( .A(y_input[0]), .Y(n190) );
  BUFX2 U514 ( .A(y_input[6]), .Y(n198) );
  BUFX2 U515 ( .A(y_input[5]), .Y(n197) );
  BUFX2 U516 ( .A(y_input[1]), .Y(n191) );
  BUFX2 U517 ( .A(y_input[4]), .Y(n196) );
  BUFX2 U518 ( .A(y_input[9]), .Y(n201) );
  BUFX2 U519 ( .A(y_input[2]), .Y(n192) );
  BUFX2 U520 ( .A(y_input[3]), .Y(n194) );
  BUFX2 U521 ( .A(y_input[3]), .Y(n195) );
  BUFX2 U522 ( .A(y_input[2]), .Y(n193) );
  INVX2 U523 ( .A(rst_n), .Y(n596) );
  XNOR2XL U524 ( .A(add_93_2_carry[9]), .B(N345), .Y(N359) );
  XNOR2XL U525 ( .A(add_93_2_carry[10]), .B(n447), .Y(N360) );
  AND2X2 U526 ( .A(add_93_2_carry[10]), .B(N346), .Y(add_93_2_carry[11]) );
  INVXL U527 ( .A(n533), .Y(n2080) );
  INVX2 U528 ( .A(n522), .Y(n541) );
  AND2X2 U529 ( .A(N120), .B(n540), .Y(n528) );
  INVX2 U530 ( .A(n449), .Y(N341) );
  AND2X1 U532 ( .A(add_93_2_carry[12]), .B(N348), .Y(add_93_2_carry[13]) );
  OR2X1 U533 ( .A(N347), .B(add_93_2_carry[11]), .Y(add_93_2_carry[12]) );
  OR2X1 U534 ( .A(N344), .B(add_93_2_carry[8]), .Y(add_93_2_carry[9]) );
  OR2X1 U535 ( .A(N343), .B(add_93_2_carry[7]), .Y(add_93_2_carry[8]) );
  AND2X1 U536 ( .A(add_93_2_carry[6]), .B(N342), .Y(add_93_2_carry[7]) );
  OR2X1 U537 ( .A(N341), .B(add_93_2_carry[5]), .Y(add_93_2_carry[6]) );
  AND2X1 U538 ( .A(add_55_carry[12]), .B(N43), .Y(N57) );
  XOR2X1 U539 ( .A(N43), .B(add_55_carry[12]), .Y(N56) );
  OR2X1 U540 ( .A(N42), .B(add_55_carry[11]), .Y(add_55_carry[12]) );
  AND2X1 U541 ( .A(add_55_carry[10]), .B(N41), .Y(add_55_carry[11]) );
  XOR2X1 U542 ( .A(N41), .B(add_55_carry[10]), .Y(N54) );
  OR2X1 U543 ( .A(N40), .B(add_55_carry[9]), .Y(add_55_carry[10]) );
  XNOR2X1 U544 ( .A(add_55_carry[9]), .B(N40), .Y(N53) );
  OR2X1 U545 ( .A(N39), .B(add_55_carry[8]), .Y(add_55_carry[9]) );
  XNOR2X1 U546 ( .A(add_55_carry[8]), .B(N39), .Y(N52) );
  OR2X1 U547 ( .A(N38), .B(add_55_carry[7]), .Y(add_55_carry[8]) );
  XNOR2X1 U548 ( .A(add_55_carry[7]), .B(N38), .Y(N51) );
  AND2X1 U549 ( .A(add_55_carry[6]), .B(N37), .Y(add_55_carry[7]) );
  XOR2X1 U550 ( .A(N37), .B(add_55_carry[6]), .Y(N50) );
  OR2X1 U551 ( .A(N36), .B(add_55_carry[5]), .Y(add_55_carry[6]) );
  XNOR2X1 U552 ( .A(add_55_carry[5]), .B(N36), .Y(N49) );
  OR2X1 U553 ( .A(N35), .B(N34), .Y(add_55_carry[5]) );
  XNOR2X1 U554 ( .A(N34), .B(N35), .Y(N48) );
  NAND2BX1 U555 ( .AN(N24), .B(n461), .Y(n465) );
  OAI2BB1X1 U556 ( .A0N(N34), .A1N(N24), .B0(n465), .Y(N146) );
  OR2X1 U557 ( .A(n465), .B(N25), .Y(n466) );
  OAI2BB1X1 U558 ( .A0N(n465), .A1N(N25), .B0(n466), .Y(N147) );
  OR2X1 U559 ( .A(n466), .B(N26), .Y(n467) );
  OAI2BB1X1 U560 ( .A0N(n466), .A1N(N26), .B0(n467), .Y(N148) );
  OR2X1 U561 ( .A(n467), .B(N27), .Y(n468) );
  OAI2BB1X1 U562 ( .A0N(n467), .A1N(N27), .B0(n468), .Y(N149) );
  OR2X1 U563 ( .A(n468), .B(N28), .Y(n469) );
  OAI2BB1X1 U564 ( .A0N(n468), .A1N(N28), .B0(n469), .Y(N150) );
  XNOR2X1 U565 ( .A(N29), .B(n469), .Y(N151) );
  NOR2X1 U566 ( .A(N29), .B(n469), .Y(n470) );
  XOR2X1 U567 ( .A(N30), .B(n470), .Y(N152) );
  NOR2BX1 U568 ( .AN(lower[0]), .B(upper[0]), .Y(n471) );
  OAI22X1 U569 ( .A0(lower[1]), .A1(n471), .B0(n471), .B1(n491), .Y(n472) );
  NAND2BX1 U570 ( .AN(upper[6]), .B(lower[6]), .Y(n483) );
  CLKNAND2X2 U571 ( .A(lower[5]), .B(n488), .Y(n482) );
  NAND2BX1 U572 ( .AN(upper[4]), .B(lower[4]), .Y(n479) );
  NAND4X1 U573 ( .A(n472), .B(n483), .C(n482), .D(n479), .Y(n487) );
  CLKNAND2X2 U574 ( .A(lower[3]), .B(n489), .Y(n478) );
  CLKNAND2X2 U575 ( .A(lower[2]), .B(n490), .Y(n473) );
  CLKNAND2X2 U576 ( .A(n478), .B(n473), .Y(n486) );
  NOR2BX1 U577 ( .AN(lower[7]), .B(upper[7]), .Y(n485) );
  NOR2BX1 U578 ( .AN(upper[0]), .B(lower[0]), .Y(n475) );
  OAI2BB1X1 U579 ( .A0N(n2610), .A1N(n475), .B0(n491), .Y(n474) );
  OAI211XL U580 ( .A0(n475), .A1(n2610), .B0(n474), .C0(n473), .Y(n476) );
  OAI221X1 U581 ( .A0(lower[2]), .A1(n490), .B0(lower[3]), .B1(n489), .C0(n476), .Y(n477) );
  AOI32XL U582 ( .A0(n479), .A1(n478), .A2(n477), .B0(upper[4]), .B1(n337), 
        .Y(n480) );
  OAI21X1 U583 ( .A0(lower[5]), .A1(n488), .B0(n480), .Y(n481) );
  AOI32XL U584 ( .A0(n483), .A1(n482), .A2(n481), .B0(upper[6]), .B1(n492), 
        .Y(n484) );
  NOR4X1 U585 ( .A(n487), .B(n486), .C(N18), .D(n485), .Y(N19) );
  NAND2BX1 U586 ( .AN(n497), .B(n511), .Y(n513) );
  AOI31X1 U587 ( .A0(n503), .A1(n494), .A2(n493), .B0(n505), .Y(n496) );
  NOR2X1 U588 ( .A(n495), .B(n509), .Y(n504) );
  AOI211X1 U589 ( .A0(n496), .A1(n504), .B0(n495), .C0(n521), .Y(n499) );
  NOR2BX1 U590 ( .AN(n514), .B(n497), .Y(n498) );
  AOI31X1 U591 ( .A0(n502), .A1(n501), .A2(n456), .B0(n500), .Y(n506) );
  OAI2B11X1 U592 ( .A1N(n506), .A0(n505), .B0(n504), .C0(n503), .Y(n507) );
  OAI31X1 U593 ( .A0(n510), .A1(n509), .A2(n520), .B0(n508), .Y(n512) );
  OAI21X1 U594 ( .A0(n517), .A1(n516), .B0(n515), .Y(N208) );
  NOR2BX1 U595 ( .AN(N124), .B(N77), .Y(n533) );
  OAI32XL U596 ( .A0(n528), .A1(N119), .A2(n539), .B0(n540), .B1(N120), .Y(
        n522) );
  NAND2BX1 U597 ( .AN(N75), .B(N122), .Y(n523) );
  OAI21X1 U598 ( .A0(N74), .A1(n459), .B0(n523), .Y(n526) );
  AO2B2X1 U599 ( .B0(n538), .B1(N116), .A0(N115), .A1N(N68), .Y(n525) );
  NAND2BX1 U600 ( .AN(N71), .B(N118), .Y(n527) );
  AOI32XL U601 ( .A0(N70), .A1(n458), .A2(n527), .B0(n536), .B1(N71), .Y(n530)
         );
  OAI211XL U602 ( .A0(N116), .A1(n538), .B0(n525), .C0(n530), .Y(n532) );
  OAI21X1 U603 ( .A0(N70), .A1(n458), .B0(n527), .Y(n529) );
  AOI221XL U604 ( .A0(n530), .A1(n529), .B0(N119), .B1(n539), .C0(n528), .Y(
        n531) );
  AND3X1 U605 ( .A(n532), .B(n542), .C(n531), .Y(n534) );
  NOR2BX1 U606 ( .AN(n201), .B(N67), .Y(n556) );
  OAI32XL U607 ( .A0(n569), .A1(n200), .A2(n556), .B0(n201), .B1(n570), .Y(
        n560) );
  AND2X1 U608 ( .A(n197), .B(n566), .Y(n551) );
  OAI32XL U609 ( .A0(n551), .A1(n196), .A2(n565), .B0(n566), .B1(n197), .Y(
        n545) );
  NAND2BX1 U610 ( .AN(N65), .B(n199), .Y(n546) );
  AOI32XL U611 ( .A0(N64), .A1(n562), .A2(n546), .B0(n563), .B1(N65), .Y(n547)
         );
  OAI21X1 U612 ( .A0(N64), .A1(n562), .B0(n546), .Y(n549) );
  AOI22XL U613 ( .A0(n567), .A1(n547), .B0(n547), .B1(n549), .Y(n559) );
  AO2B2X1 U614 ( .B0(n564), .B1(n191), .A0(n190), .A1N(N58), .Y(n548) );
  NAND2BX1 U615 ( .AN(N61), .B(n194), .Y(n550) );
  AOI32XL U616 ( .A0(N60), .A1(n561), .A2(n550), .B0(n518), .B1(N61), .Y(n553)
         );
  OAI211XL U617 ( .A0(n191), .A1(n564), .B0(n548), .C0(n553), .Y(n555) );
  OAI21X1 U618 ( .A0(N60), .A1(n561), .B0(n550), .Y(n552) );
  AOI221XL U619 ( .A0(n553), .A1(n552), .B0(n196), .B1(n565), .C0(n551), .Y(
        n554) );
  AND3X1 U620 ( .A(n555), .B(n568), .C(n554), .Y(n558) );
  AOI21X1 U621 ( .A0(n200), .A1(n569), .B0(n556), .Y(n557) );
  OAI32XL U622 ( .A0(n560), .A1(n559), .A2(n558), .B0(n557), .B1(n560), .Y(
        N135) );
  NOR2BX1 U623 ( .AN(N394), .B(N384), .Y(n582) );
  OAI32XL U624 ( .A0(n594), .A1(N393), .A2(n582), .B0(N394), .B1(n595), .Y(
        n586) );
  AND2X1 U625 ( .A(N390), .B(n591), .Y(n577) );
  OAI32XL U626 ( .A0(n577), .A1(N389), .A2(n590), .B0(n591), .B1(N390), .Y(
        n571) );
  NAND2BX1 U627 ( .AN(N382), .B(N392), .Y(n572) );
  AOI32XL U628 ( .A0(N381), .A1(n455), .A2(n572), .B0(n588), .B1(N382), .Y(
        n573) );
  OAI21X1 U629 ( .A0(N381), .A1(n455), .B0(n572), .Y(n575) );
  AO2B2X1 U630 ( .B0(n589), .B1(N386), .A0(N385), .A1N(N375), .Y(n574) );
  NAND2BX1 U631 ( .AN(N378), .B(N388), .Y(n576) );
  AOI32XL U632 ( .A0(N377), .A1(n454), .A2(n576), .B0(n587), .B1(N378), .Y(
        n579) );
  OAI211XL U633 ( .A0(N386), .A1(n589), .B0(n574), .C0(n579), .Y(n581) );
  OAI21X1 U634 ( .A0(N377), .A1(n454), .B0(n576), .Y(n578) );
  AOI221XL U635 ( .A0(n579), .A1(n578), .B0(N389), .B1(n590), .C0(n577), .Y(
        n580) );
  AND3X1 U636 ( .A(n581), .B(n593), .C(n580), .Y(n584) );
  AOI21X1 U637 ( .A0(N393), .A1(n594), .B0(n582), .Y(n583) );
  OAI32XL U638 ( .A0(n586), .A1(n585), .A2(n584), .B0(n583), .B1(n586), .Y(
        N395) );
endmodule

