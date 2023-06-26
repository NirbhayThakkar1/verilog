module top_module (
	input a,
	input b,
	input c,
	input d,
	output out,
	output out_n );
	
	wire w1, w2;		// Declare two wires (named w1 and w2)
	assign w1 = a&b;	// First AND gate
	assign w2 = c&d;	// Second AND gate
	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate

	assign out_n = ~out;	// NOT gate
	
endmodule

-----------------------------------------OR--------------------------------------------------

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n); 
    wire x;
    wire y;
    wire z;
    and(x,a,b);
    and(y,c,d);
    or(out,x,y);
    nor(out_n,x,y);

endmodule
