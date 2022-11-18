module addSubComd_tb #(parameter N = 4);
	logic [N - 1:0] a, b, s;
	logic sub, cout;
	
	localparam period = 100;
	
	addSubComd asC(.a(a), .b(b), .sub(sub), .s(s), .cout(cout));
	
	initial begin
	
		a = 4'b0000;
		b = 4'b0001;
		sub = 0;
		#period;
		a = 4'b0000;
		b = 4'b0001;
		sub = 1;
		#period;
		a = 4'b1000;
		b = 4'b0001;
		sub = 0;
		#period;
		a = 4'b1000;
		b = 4'b0001;
		sub = 1;
		#period;
		a = 4'b0100;
		b = 4'b0001;
		sub = 0;
		#period;
		a = 4'b0100;
		b = 4'b0001;
		sub = 1;
		#period;
		a = 4'b0000;
		b = 4'b1001;
		sub = 0;
		#period;
		a = 4'b0000;
		b = 4'b1001;
		sub = 1;
		#period;
		a = 4'b0001;
		b = 4'b0011;
		sub = 0;
		#period;
		a = 4'b0001;
		b = 4'b0011;
		sub = 1;
		#period;
		a = 4'b0010;
		b = 4'b0001;
		sub = 0;
		#period;
		a = 4'b0010;
		b = 4'b0001;
		sub = 1;
		#period;
		a = 4'b1010;
		b = 4'b0101;
		sub = 0;
		#period;
		a = 4'b1010;
		b = 4'b0101;
		sub = 1;
		#period;
		a = 4'b1000;
		b = 4'b0001;
		sub = 0;
		#period;
		a = 4'b1000;
		b = 4'b0001;
		sub = 1;
		#period;
	end
	
	
endmodule 