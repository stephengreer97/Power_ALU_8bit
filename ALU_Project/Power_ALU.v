module PowerALU(Out,s,A,B);

input [7:0] A,B;
input [3:0] s;
output reg [7:0] Out;

wire Cout,A_LT_B,A_GT_B,A_EQ_B;
wire [7:0] Add,Subtract,Increment,Decrement,Transfer,Ones,And,Or,Xor,Nand,Nor,Xnor;
wire Cin;
assign Cin = s[0];


RCA8 rca1(Cout,Increment,A,8'b00000001,Cin);
RCA8 rca2(Cout,Transfer,A,8'b11111111,Cin);
RCA8 rca3(Cout,Add,A,B,Cin);
RCA8 rca4(Cout,Subtract,A,B,Cin);
RCA8 rca5(Cout,Decrement,A,8'b00000001,Cin);

ones8 o1(Ones,A);
AndOrNot aon1(And,Or,Xor,Nand,Nor,Xnor,A,B);
Comparator8 comp1(A_GT_B,A_LT_B,A_EQ_B,A,B);

always @* begin
    case(s)

        4'b0000: Out = Increment;
        4'b0001: Out = Decrement;
        4'b0010: Out = Add;
        4'b0011: Out = Subtract;
        4'b0100: Out = Transfer;
        4'b0101: Out = Ones;
        4'b0110: Out = And;
        4'b0111: Out = Nand;
        4'b1000: Out = Or;
        4'b1001: Out = Nor;
        4'b1010: Out = Xor;
        4'b1011: Out = Xnor;
        4'b1100: Out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_GT_B};
        4'b1101: Out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_LT_B};
        4'b1110: Out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_EQ_B};
    endcase
end

endmodule