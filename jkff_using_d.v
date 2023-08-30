module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    
    wire D;     
    assign D = (j & ~Q) | (~k & Q);
    
    D_flip_flop DFF(.D(D),.clk(clk),.Q(Q));
    
endmodule

module D_flip_flop (
    input wire D,
    input wire clk,
    output reg Q
);

    always @(posedge clk) begin
        Q <= D;     
    end

endmodule
