module AndOrNot_tb;

reg [7:0] A,B;
wire [7:0] And,Or,Xor,Nand,Nor,Xnor;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("AndOrNot_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,AON0);  // Variables that will be in vcd file
        $display("   A           B            AND            OR           XOR           NAND          NOR           XNOR");
        $display("--------------------------------------------------------------------------------------------------------");

        $monitor("%b    %b  |   %b      %b      %b      %b      %b      %b",A,B,And,Or,Xor,Nand,Nor,Xnor);
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

AndOrNot AON0(And,Or,Xor,Nand,Nor,Xnor,A,B);

endmodule