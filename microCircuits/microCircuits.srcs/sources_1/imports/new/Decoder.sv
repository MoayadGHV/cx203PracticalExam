`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 08:59:55 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
        input  logic [1:0] De,      // input decoder 
        output  logic [2:0] Den    // Decoder enable
    );
    
    always @(De , Den)
    begin
    case (De)
    2'b00 : Den = 3'b100;
    2'b01 : Den = 3'b010;
    2'b10 : Den = 3'b001;
    default: Den = 3'b000;
    endcase
    end
endmodule
