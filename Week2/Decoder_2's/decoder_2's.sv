module decoder(input logic [3:0] a,
					output logic [3:0] b);
					
	assign b[0] = a[0];
	assign b[1] = a[0] ^ a[1];
	assign b[2] = (a[0] | a[1]) ^ a[2];
	assign b[3] = (a[0] | a[1] | a[2]) ^ a[3];
					
endmodule 