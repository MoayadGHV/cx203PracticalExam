`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:39:24 AM
// Design Name: 
// Module Name: ROM
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


module ROM (
    input [3:0] address,
    output logic [7:0] instruction
    );
    
    
    always @(*) begin
        case(address)
        
            4'd0:    instruction = 8'b00001011; 
            4'd1:    instruction = 8'b01000100; 

            default: instruction = 8'b00000000;
        endcase
    end
    
endmodule
