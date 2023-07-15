// 4-bit priority encoder
/*
A priority encoder is a combinational circuit that, when given an input bit vector, outputs the position of the first 1 bit in the vector. 
For example, a 8-bit priority encoder given the input 8'b10010000 would output 3'd4, because bit[4] is first bit that is high.
*/
module top_module (
    input [3:0] in,
    output reg [1:0] pos);

    always@(*) begin
        if(in[0]==1'b1)
            pos = 0;
        else if(in[1]==1'b1)
            pos = 1;
        else if(in[2]==1'b1)
            pos = 2;
        else if(in[3]==1'b1)
            pos = 3;
        else
            pos = 0;
    end
endmodule
