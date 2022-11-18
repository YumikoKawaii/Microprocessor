module mux7451_tb;
	logic a, b, c, g;
	logic [7:0] d;
	logic y, w;
	
	localparam period = 100;
	
	mux7451 m7(.g(g), .a(a), .b(b), .c(c), .d(d), .y(y), .w(w));
	
	initial begin
	
		d = 8'b01010101;
		a = 0;
		b = 0;
		c = 0;
		g = 1;
		#period;
		
		d = 8'b01010101;
		a = 0;
		b = 0;
		c = 0;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 1;
		b = 0;
		c = 0;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 0;
		b = 1;
		c = 0;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 1;
		b = 1;
		c = 0;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 0;
		b = 0;
		c = 1;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 1;
		b = 0;
		c = 1;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 0;
		b = 1;
		c = 1;
		g = 0;
		#period;
		
		d = 8'b01010101;
		a = 1;
		b = 1;
		c = 1;
		g = 0;
		#period;
		
		
	end
	
endmodule 