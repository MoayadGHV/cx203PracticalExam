`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:10:38 PM
// Design Name: 
// Module Name: task1
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


module task1(
    input count,
    input clk, 
    output logic overflow,
    input reset
    );
    
    logic Q;
    
    always @(posedge clk, negedge reset) begin
        if(!reset) begin
            Q = reset;
        end else begin
            Q = count;
        end
    end
    
    assign overflow = (~count & Q);
    
    
    
endmodule
