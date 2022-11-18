module comparator #(parameter N = 4)
						(input logic [N - 1:0] a, b,
						 output logic q);

	logic [N - 1:0] p;
	
	assign p = a ~^ b;
	
	assign q = &(p);
						 
endmodule 