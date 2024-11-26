`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:34:29 PM
// Design Name: 
// Module Name: tb_task2
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


module tb_task2;

logic [7:0] register;
logic odd;

task2 evenOrOdd(.regs(register), .odd(odd));

initial begin

    register = 8'b00001111; #10;
    register = 8'b00001011; #10;
    register = 8'b00011111; #10;
    register = 8'b11111111; #10;
    $finish;
end

endmodule
