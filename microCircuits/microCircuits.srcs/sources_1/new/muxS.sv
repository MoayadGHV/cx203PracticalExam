`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:14:11 AM
// Design Name: 
// Module Name: mux2to4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module muxS #(int n = 8)(
    input [n-1:0] in1,
    input [n-1:0] in2,
    input select,
    output [n-1: 0] outM
    );
    
//    if (select==0) begin
    assign outM = (select) ? in1 : in2;    
endmodule
