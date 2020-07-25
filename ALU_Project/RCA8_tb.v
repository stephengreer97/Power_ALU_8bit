module RCA8_tb;

reg [7:0] A,B;
reg Cin;
wire [7:0] Sum;
wire Cout;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("RCA8_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,RCA8);  // Variables that will be in vcd file
        $display("\n  A      B    Cin       Sum");
        $display("--------------------------------");

        $monitor("%d    %d     %b   |    %d      ",A,B,Cin,Sum);
		#0 	A = 8'b10100001; B = 8'b00010000; Cin = 1'b0;
		#50 A = 8'b00110001; B = 8'b00110100; Cin = 1'b0;
		#50 A = 8'b00000000; B = 8'b00000001; Cin = 1'b0;
		#50 A = 8'b10000111; B = 8'b00011010; Cin = 1'b1;
		#50 A = 8'b00111110; B = 8'b00000111; Cin = 1'b1;
		#50 A = 8'b10111100; B = 8'b01000011; Cin = 1'b1;
		#50 A = 8'b10011010; B = 8'b00111010; Cin = 1'b1;
		#50 A = 8'b01100001; B = 8'b01000001; Cin = 1'b1;
		#50 $finish;
     end

RCA8 RCA8(Cout,Sum,A,B,Cin);

endmodule