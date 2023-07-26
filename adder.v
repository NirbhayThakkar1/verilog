module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum,cout);
    
    wire w1,w2,w3;
    
    FA fa1(x[0],y[0],0,cout[0],sum[0]);
    FA fa2(x[1],y[1],cout[0],cout[1],sum[1]);
    FA fa3(x[2],y[2],cout[1],cout[2],sum[2]);
    FA fa4(x[3],y[3],cout[2],sum[4],sum[3]);

    

endmodule

module FA( 
    input a, b, cin,
    output cout, sum );
    
	assign cout = a&b | b&cin | a&cin;
	assign sum  = a^b^cin;
endmodule
