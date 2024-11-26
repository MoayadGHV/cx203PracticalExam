`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:57:23 PM
// Design Name: 
// Module Name: tb_miniCircuits
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


module tb_miniCircuits;

logic clk, reset_n, load, serial, pattern_match;
logic [4:0] pattern;


miniCircuits_task2 patternDetector(.clk(clk), .reset_n(reset_n), .load(load), .pattern(pattern), .serial(serial), .pattern_match(pattern_match));

always #5 clk = ~clk;


initial begin

    clk = 0; reset_n = 1; #10;
    reset_n = 0; load = 1; pattern = 5'b01010; #10;
    load = 0; serial = 0; #10;
    serial = 1; #10;
    serial = 0; #10;
    serial = 1; #10;
    serial = 0; #10;
    $finish;
end

endmodule
