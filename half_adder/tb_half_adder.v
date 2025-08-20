`timescale 1ns/1ps
module tb_half_adder;
	reg A,B;
	wire Sum,Carry;
	
 	half_adder uut(
 		.A(A),
 		.B(B),
 		.Sum(Sum),
 		.Carry(Carry)
 	);
 	
 	initial begin
		$dumpfile("half_adder.vcd"); // VCD waveform file
 		$dumpvars(0,tb_half_adder);
 		
 		// Test all input combinations
 		A = 0; B = 0; #10;
 		A = 0; B = 1; #10;
 		A = 1; B = 0; #10;
 		A = 1; B = 1; #10;
 		
 		$finish;
 		
 	end
endmodule
