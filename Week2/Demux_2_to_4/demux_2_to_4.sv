module demux (input logic a, b, d,
				  output logic [3:0] y);
				  
	assign y[0] = ~a & ~b & d;
   assign y[1] = a & ~b & d;
	assign y[2] = ~a & b & d;
	assign y[3] = a & b & d;
				  
endmodule 