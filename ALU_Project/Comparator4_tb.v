module Comparator4_tb;

reg [3:0] A,B;
wire A_GT_B,A_LT_B,A_EQ_B;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Comparator4_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,Comp4);  // Variables that will be in vcd file
        $display(" A     B     A>B    A<B    A=B");
        $display("---------------------------------");

        $monitor("%d    %d  |   %b      %b      %b",A,B,A_GT_B,A_LT_B,A_EQ_B);
		#0 	A = 4'b0000; B = 4'b0000;
		#50 A = 4'b0001; B = 4'b0000;
		#50 A = 4'b0000; B = 4'b0001;
		#50 A = 4'b1111; B = 4'b0000;
		#50 A = 4'b1110; B = 4'b1111;
		#50 A = 4'b1111; B = 4'b1111;
		#50 A = 4'b0101; B = 4'b1010;
		#50 A = 4'b0110; B = 4'b0111;
		#50 $finish;
     end

Comparator4 Comp4(A_GT_B,A_LT_B,A_EQ_B,A,B);

endmodule