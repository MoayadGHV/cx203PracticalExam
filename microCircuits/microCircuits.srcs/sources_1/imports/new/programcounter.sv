`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:58:30 AM
// Design Name: 
// Module Name: programcounter
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


module programcounter (
    input [2:0] in,
    input en,
    input reset,
    input clk,
    output logic [3:0] out
    );

    always @(posedge clk, negedge reset) begin
    if (!reset) 
        out <= 4'd0;
    else if (en) 
        out <= in;
    else
        out <= out + 1;
    end

    
    
endmodule
