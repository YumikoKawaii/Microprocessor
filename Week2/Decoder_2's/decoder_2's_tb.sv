module decoder_tb #(parameter N = 4);
	
	logic [N - 1:0] a, b;
	
	localparam period = 30;
	
	decoder de(.a(a), .b(b));
	
	initial begin
		
		a = 4'b0000;
		#period;
		
		a = 4'b0001;
		#period;
		
		a = 4'b0010;
		#period;
		
		a = 4'b0011;
		#period;
		
		a = 4'b0100;
		#period;
		
		a = 4'b0101;
		#period;
		
		a = 4'b0110;
		#period;
		
		a = 4'b0111;
		#period;
		
		a = 4'b1000;
		#period;
		
		a = 4'b1001;
		#period;
		
		a = 4'b1010;
		#period;
		
		a = 4'b1011;
		#period;
		
		a = 4'b1100;
		#period;
		
		a = 4'b1101;
		#period;
		
		a = 4'b1110;
		#period;
		
		a = 4'b1111;
		#period;
		
	end
	
endmodule