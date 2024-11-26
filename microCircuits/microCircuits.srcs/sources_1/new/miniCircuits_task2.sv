`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:50:37 PM
// Design Name: 
// Module Name: miniCircuits_task2
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


module miniCircuits_task2(
    input clk,
    input reset_n,
    input load,
    input [4:0] pattern,
    input serial,
    output logic pattern_match
    );
    logic [4:0] pattern_inside;
    logic [4:0] shiftReg;
    always @(posedge clk) begin
        
        
        shiftReg = shiftReg << 1;
        shiftReg[0] = serial;
        
        if (load) begin 
            pattern_inside = pattern;
        end
        
        
        if (shiftReg == pattern_inside) begin
            pattern_match = 1'b1;
        end else begin
            pattern_match = 1'b0;
        end
        
        
    end
        
        
    
    
endmodule
