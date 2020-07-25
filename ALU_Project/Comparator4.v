// 4-bit Comparator

module Comparator4(A_EQ_B,A_GT_B,A_LT_B,A,B);

input [3:0] A,B;
wire [3:0] iA,iB;
output A_GT_B,A_LT_B,A_EQ_B;
wire [7:0] w;
wire x,y,z,t;
wire [4:0] m;
wire [2:0] n;

onesCompliment c0(iA[0],A[0]);
onesCompliment c1(iA[1],A[1]);
onesCompliment c2(iA[2],A[2]);
onesCompliment c3(iA[3],A[3]);

onesCompliment c4(iB[0],B[0]);
onesCompliment c5(iB[1],B[1]);
onesCompliment c6(iB[2],B[2]);
onesCompliment c7(iB[3],B[3]);

and a1(w[7],A[3],iB[3]);
and a2(w[6],iA[3],B[3]);
and a3(w[5],A[2],iB[2]);
and a4(w[4],iA[2],B[2]);
and a5(w[3],A[1],iB[1]);
and a6(w[2],iA[1],B[1]);
and a7(w[1],A[0],iB[0]);
and a8(w[0],iA[0],B[0]);

nor n1(x,w[7],w[6]);
nor n2(y,w[5],w[4]);
nor n3(z,w[3],w[2]);
nor n4(t,w[1],w[0]);

and a9(m[4],x,w[5]);
and a10(m[3],x,y);
and a11(m[2],m[3],w[3]);
and a12(m[1],m[3],z);
and a13(m[0],m[1],w[1]);

and a14(n[2],w[4],x);
and a15(n[1],w[2],m[3]);
and a16(n[0],w[0],m[1]);

or o1(A_GT_B,w[7],m[4],m[2],m[0]);
or o2(A_LT_B,w[6],n[2],n[1],n[0]);
nor n5(A_EQ_B,A_LT_B,A_GT_B);

endmodule