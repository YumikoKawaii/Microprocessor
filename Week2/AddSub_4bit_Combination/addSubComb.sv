module addSubComd #(parameter N = 4)
						(input logic[N - 1:0] a, b,
						 input logic sub,
						 output logic [N - 1:0] s,
						 output logic cout);
						
	logic i, j , k;	
			
	fullAdder f0(
	.a (a[0]),
	.b (sub ^ b[0]),
	.cin (sub),
	.s (s[0]),
	.cout (i)
	);	
	
	fullAdder f1(
	.a (a[1]),
	.b (sub ^ b[1]),
	.cin (i),
	.s (s[1]),
	.cout (j)
	);	
	
	fullAdder f2(
	.a (a[2]),
	.b (sub ^ b[2]),
	.cin (j),
	.s (s[2]),
	.cout (k)
	);
	
	fullAdder f3(
	.a (a[3]),
	.b (sub ^ b[3]),
	.cin (k),
	.s (s[3]),
	.cout (cout)
	);
						 
endmodule 