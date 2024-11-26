`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 03:25:57 PM
// Design Name: 
// Module Name: tb_circuitsTask1
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


module tb_circuitsTask1;


logic [3:0]regO;
logic clk, reset;



circuits_task1 circuits(.clk(clk), .reset(reset), .regO(regO));


always #5 clk = ~clk;


initial begin

    clk = 0; reset = 0; #10;
    reset = 1; #50;
    $finish;

end
endmodule
