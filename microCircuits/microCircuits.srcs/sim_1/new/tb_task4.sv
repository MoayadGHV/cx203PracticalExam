`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:38:57 PM
// Design Name: 
// Module Name: tb_task4
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


module tb_task4;

logic [3:0] a, b;
logic [7:0] p;


task4 multip(.a(a), .b(b), .p(p));

initial begin

    a = 4'b0001;
    b = 4'b0001;
    #10;
    a = 4'b0011;
    b = 4'b0011;
    #10;
    a = 4'b0111;
    b = 4'b0111;
    #10;
    a = 4'b1111;
    b = 4'b1111;
    #10;
    a = 4'b0000;
    b = 4'b1111;
    #10;
    $finish;
end
endmodule
