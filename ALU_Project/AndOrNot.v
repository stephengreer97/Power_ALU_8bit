// 8-bit And/Or/Not

module AndOrNot(And,Or,Xor,Nand,Nor,Xnor,A,B);

input [7:0] A,B;
output [7:0] And,Or,Xor,Nand,Nor,Xnor;

and a0(And[0],A[0],B[0]);
and a1(And[1],A[1],B[1]);
and a2(And[2],A[2],B[2]);
and a3(And[3],A[3],B[3]);
and a4(And[4],A[4],B[4]);
and a5(And[5],A[5],B[5]);
and a6(And[6],A[6],B[6]);
and a7(And[7],A[7],B[7]);

or o0(Or[0],A[0],B[0]);
or o1(Or[1],A[1],B[1]);
or o2(Or[2],A[2],B[2]);
or o3(Or[3],A[3],B[3]);
or o4(Or[4],A[4],B[4]);
or o5(Or[5],A[5],B[5]);
or o6(Or[6],A[6],B[6]);
or o7(Or[7],A[7],B[7]);

xor x0(Xor[0],A[0],B[0]);
xor x1(Xor[1],A[1],B[1]);
xor x2(Xor[2],A[2],B[2]);
xor x3(Xor[3],A[3],B[3]);
xor x4(Xor[4],A[4],B[4]);
xor x5(Xor[5],A[5],B[5]);
xor x6(Xor[6],A[6],B[6]);
xor x7(Xor[7],A[7],B[7]);

ones8 nand1(Nand,And);
ones8 nor1(Nor,Or);
ones8 xnor1(Xnor,Xor);

endmodule