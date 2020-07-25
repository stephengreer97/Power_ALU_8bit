// 8-bit RCA

module RCA8(Cout,Sum,A,B,Cin);
input [7:0] A,B;
input Cin;
output Cout;
output [7:0] Sum;

wire [7:0] xB;
wire [7:0] w;

xor x1(xB[0],B[0],Cin);
xor x2(xB[1],B[1],Cin);
xor x3(xB[2],B[2],Cin);
xor x4(xB[3],B[3],Cin);
xor x5(xB[4],B[4],Cin);
xor x6(xB[5],B[5],Cin);
xor x7(xB[6],B[6],Cin);
xor x8(xB[7],B[7],Cin);

FA FA0(w[0],Sum[0],A[0],xB[0],Cin);
FA FA1(w[1],Sum[1],A[1],xB[1],w[0]);
FA FA2(w[2],Sum[2],A[2],xB[2],w[1]);
FA FA3(w[3],Sum[3],A[3],xB[3],w[2]);
FA FA4(w[4],Sum[4],A[4],xB[4],w[3]);
FA FA5(w[5],Sum[5],A[5],xB[5],w[4]);
FA FA6(w[6],Sum[6],A[6],xB[6],w[5]);
FA FA7(Cout,Sum[7],A[7],xB[7],w[6]);

endmodule