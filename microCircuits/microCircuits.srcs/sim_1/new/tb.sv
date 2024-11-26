`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:16:50 PM
// Design Name: 
// Module Name: tb
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


module tb_task1;


logic clk, reset, count, overflow;


task1 overflowDetection(.count(count), .clk(clk), .overflow(overflow), .reset(reset));

always #5 clk = ~clk;


initial begin

    clk = 1; reset = 0; #5;
    reset = 1; count = 0; #10;
    count = 0; #10;
    count = 1; #10;
    count = 0; #10;
    count = 1; #10;
    count = 1; #10;
    $finish;
end    


endmodule
