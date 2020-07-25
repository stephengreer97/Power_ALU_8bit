// 8-bit Ones Compliment

module ones8(iA,A);
input [7:0] A;
output [7:0] iA;

onesCompliment ones1(iA[0],A[0]);
onesCompliment ones2(iA[1],A[1]);
onesCompliment ones3(iA[2],A[2]);
onesCompliment oness4(iA[3],A[3]);
onesCompliment ones5(iA[4],A[4]);
onesCompliment ones6(iA[5],A[5]);
onesCompliment ones7(iA[6],A[6]);
onesCompliment ones8(iA[7],A[7]);

endmodule