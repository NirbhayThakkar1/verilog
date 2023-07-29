module top_module (
  input [99:0] a, b,
  input cin,
  output reg [99:0] sum,
  output reg cout
);
  assign {cout, sum} = a + b + cin;
/*
The concatenation {carry_out, sum} creates a 101-bit vector, which holds
the result of the addition operation a + b + carry_in.

In binary addition, when you add two N-bit numbers, the result could potentially be an N+1 bit number 
if there is a carry from the addition of the most significant bits.

For a 100-bit binary adder, if the sum of a, b, and carry_in exceeds 
the maximum value that can be represented by 100 bits, there will be a carry-out, which is the 101st bit.

By concatenating carry_out and sum into a 101-bit vector, we can capture this potential carry-out
    
*/
endmodule
