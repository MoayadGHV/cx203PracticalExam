`timescale 1ns / 1ps


module ALU #(int n = 8)(

    input [n-1:0] a,
    input [n-1:0] b,
    input op,
    output [n-1:0] out,
    output carryOut
    );
    
    logic [n:0] tmp;
    assign tmp = (op) ? a - b : a + b;


    assign carryOut = (tmp[n] == 1'b1) ? 1 : 0;
    assign out = tmp[n-1:0];
    


    
endmodule
