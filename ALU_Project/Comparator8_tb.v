module Comparator8_tb;

reg [7:0] A,B;
wire A_GT_B,A_LT_B,A_EQ_B;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Comparator8_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,Comp8);  // Variables that will be in vcd file
        $display(" A       B     A>B    A<B    A=B");
        $display("---------------------------------");

        $monitor("%d    %d  |   %b      %b      %b",A,B,A_GT_B,A_LT_B,A_EQ_B);
		#0 	A = 8'b00000000; B = 8'b00000000;
		#50 A = 8'b00110001; B = 8'b00110100;
		#50 A = 8'b00000000; B = 8'b00000001;
		#50 A = 8'b10000111; B = 8'b00011010;
		#50 A = 8'b11111110; B = 8'b11111111;
		#50 A = 8'b11111100; B = 8'b10100111;
		#50 A = 8'b00011010; B = 8'b00111010;
		#50 A = 8'b01100001; B = 8'b01100001;
		#50 $finish;
     end

Comparator8 Comp8(A_GT_B,A_LT_B,A_EQ_B,A,B);

endmodule