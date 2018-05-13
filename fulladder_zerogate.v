/*
* Dakota Lester
* CSE 341 - Project 2 Part 1 and 2
* Date: 11/4/2015
* File - fulladder_zerogate.v
* Description: This is the same file as fulladder_unitgate except
* without a delay gate of 1 instead the simulation excutes with no 
* added delays
*/
module project2();
	wire s;	
	wire cout;	
	wire w, x, y, z;
	reg a, b, c;
	// xor the first gate of a,b to lead into wire w
	xor (w, a, b);
	xor (s, w, c);

	// Second part of the circuit
	and (x, a, c);
	and (y, b, c);
	and (z, a, b);

	// or the result of all three of those gates into cout
	or (cout, x, y, z);

	initial begin
		$monitor($time, "a = %b, b = %b, c = %b, s = %b, cout = %b", a, b, c, s, cout);
		#0 a = 0; b = 0; c = 0;
		#5 a = 1; b = 0; c = 0;
		#5 a = 0; b = 1; c = 0;
		#5 a = 0; b = 0; c = 1;
		#5 a = 1; b = 1; c = 0;
		#5 a = 0; b = 1; c = 1;
		#5 a = 1; b = 0; c = 1;
		#5 a = 1; b = 1; c = 1;
		$display($time, "a = %b, b = %b, c = %b, s = %b, cout = %b", a, b, c, s, cout);
	end
endmodule
	
