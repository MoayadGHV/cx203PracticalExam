`timescale 1ns / 1ps



module register #(int n = 8)(
    input [n-1:0] in,
    input clk,
    input en,
    input reset,
    output [n-1:0] out
    );
    
    genvar i;
    generate 
        for(i= 0; i < n; i = i+1) begin : genloop
            RDff FF(.clk(clk), .reset(reset), .ld(en), .D(in[i]), .Q(out[i]));        
        end
    endgenerate
    
endmodule
