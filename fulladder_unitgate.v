/*
* Dakota Lester
* CSE 341 - Project 2 Part 1 and 2
* Date: 11/4/2015
* File: fulladder_unitgate.v
* Description: This is the full adder with a 1 unit
* gate delay added 
*/
module project2();
	wire s;	
	wire cout;	
	wire w, x, y, z;
	reg a, b, c;
	// xor the first gate of a,b to lead into wire w
	xor #1 (w, a, b);
	xor #1 (s, w, c);

	// Second part of the circuit
	// set a 1 unit delay to each gate
	and #1 (x, a, c);
	and #1 (y, b, c);
	and #1 (z, a, b);

	// or the result of all three of those gates into cout
	// set 1 unit of delay to the or gate
	or #1 (cout, x, y, z);

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
	
