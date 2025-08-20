module full_adder(
	input A,B,Cin,
	output S,Co
);

	assign S = A^B^Cin;
	assign Co = (A & B) | (Cin & (A^B));
	
endmodule

