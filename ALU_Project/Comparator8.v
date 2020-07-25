// 8-bit Comparator

module Comparator8(A_GT_B,A_LT_B,A_EQ_B,A,B);

input [7:0] A,B;
wire x,y,z,m,n,r;
wire w1,w2;
output A_GT_B,A_LT_B,A_EQ_B;

Comparator4 com1(m,n,r,A[3:0],B[3:0]);
Comparator4 com2(x,y,z,A[7:4],B[7:4]);

and a1(w1,x,n);
or o1(A_GT_B,y,w1);

and a2(A_EQ_B,x,m);

and a3(w2,x,r);
or o2(A_LT_B,z,w2);

endmodule