// Name: 
// Full Adder 

module FA(Cout,Sum,A,B,Cin);
input A,B,Cin;
output Cout,Sum;
wire w1,w2,w3,w4;

xor x1(w1,A,B);
xor x2(Sum,w1,Cin);

and a1(w2,A,B);
and a2(w3,A,Cin);
and a3(w4,B,Cin);
or o1(Cout,w2,w3,w4);

endmodule