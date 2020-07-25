module Power_ALU_Stephen_Greer_tb;

reg [7:0] A,B;
reg [3:0] s;
wire [7:0] Out;

   initial
   
    begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Power_ALU_Stephen_Greer_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,ALU8);  // Variables that will be in vcd file
        $display("\nSelect      A        B      Out");
        $display("-----------------------------------------------");

        $monitor("%b%b%b%b      %d      %d      %d",s[3],s[2],s[1],s[0],A,B,Out);
		#0 	s[3] = 1'b0; s[2] = 1'b0; s[1] = 1'b0; s[0] = 1'b0; A = 8'b01100101; B = 8'b00111110;
		#50 s[3] = 1'b0; s[2] = 1'b0; s[1] = 1'b0; s[0] = 1'b1; A = 8'b01100101; B = 8'b00110100;
		#50 s[3] = 1'b0; s[2] = 1'b0; s[1] = 1'b1; s[0] = 1'b0; A = 8'b00110101; B = 8'b01010001;
		#50 s[3] = 1'b0; s[2] = 1'b0; s[1] = 1'b1; s[0] = 1'b1; A = 8'b10000111; B = 8'b00011010;
		#50 s[3] = 1'b0; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b0; A = 8'b00000000; B = 8'b11001010;
		#50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b0; A = 8'b11111111; B = 8'b11111110;
        #50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b0; A = 8'b11111110; B = 8'b11111111;
        #50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b1; A = 8'b10100111; B = 8'b11111100;
		#50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b1; A = 8'b11111100; B = 8'b10100111;
		#50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b1; s[0] = 1'b0; A = 8'b00011010; B = 8'b00011010;
        #50 s[3] = 1'b1; s[2] = 1'b1; s[1] = 1'b1; s[0] = 1'b0; A = 8'b00011010; B = 8'b00011011;
		#50 s[3] = 1'b0; s[2] = 1'b1; s[1] = 1'b0; s[0] = 1'b1; A = 8'b10101010; B = 8'b10100111;

        $display("\nSelect        A             B            Out");
        $display("-----------------------------------------------");

        $monitor("%b%b%b%b      %b      %b      %b",s[3],s[2],s[1],s[0],A,B,Out);
		#50 s[3] = 1'b0; s[2] = 1'b1; s[1] = 1'b1; s[0] = 1'b0; A = 8'b00011010; B = 8'b00101010;
		#50 s[3] = 1'b0; s[2] = 1'b1; s[1] = 1'b1; s[0] = 1'b1; A = 8'b11101001; B = 8'b11100000;
        #50	s[3] = 1'b1; s[2] = 1'b0; s[1] = 1'b0; s[0] = 1'b0; A = 8'b00000100; B = 8'b01001000;
		#50 s[3] = 1'b1; s[2] = 1'b0; s[1] = 1'b0; s[0] = 1'b1; A = 8'b00110001; B = 8'b00110100;
		#50 s[3] = 1'b1; s[2] = 1'b0; s[1] = 1'b1; s[0] = 1'b0; A = 8'b00011000; B = 8'b00100001;
		#50 s[3] = 1'b1; s[2] = 1'b0; s[1] = 1'b1; s[0] = 1'b1; A = 8'b10000110; B = 8'b00011011;
        #50 $finish;
    end

PowerALU ALU8(Out,s,A,B);

endmodule