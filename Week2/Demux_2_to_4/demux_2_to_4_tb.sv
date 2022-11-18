module demux_tb;
	logic a, b, d;
	logic [3:0] y; 
	
	localparam period = 100;
	
	demux de(.a(a), .b(b), .d(d), .y(y));
	
	initial begin
		
		a = 0;
		b = 0;
		d = 1;
		#period;
		
		a = 1;
		b = 0;
		d = 1;
		#period;
		
		a = 0;
		b = 1;
		d = 1;
		#period;
		
		a = 1;
		b = 1;
		d = 1;
		#period;
		
	end
	
endmodule 