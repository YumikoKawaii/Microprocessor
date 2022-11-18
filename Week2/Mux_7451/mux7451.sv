module mux7451  (input logic g, a, b, c, 
					  input logic [7:0] d,	
					  output logic y, w);
	
	logic [7:0] chanel;
	logic G, A, B, C;
	
	assign X = ~a;
	assign Y = ~b;
	assign Z = ~c;
	assign G = ~g;
	
	assign chanel[0] = X & Y & Z & d[0] & G;
	assign chanel[1] = a & Y & Z & d[1] & G;
	assign chanel[2] = X & b & Z & d[2] & G;
	assign chanel[3] = a & b & Z & d[3] & G;
	assign chanel[4] = X & Y & c & d[4] & G;
	assign chanel[5] = a & Y & c & d[5] & G;
	assign chanel[6] = X & b & c & d[6] & G;
	assign chanel[7] = a & b & c & d[7] & G;
	
	assign w = ~|(chanel);
	assign y = ~w;
	
endmodule	