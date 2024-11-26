`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:08:05 PM
// Design Name: 
// Module Name: tb_task3
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


module tb_task3;


logic [7:0] A, B, out;
logic Cin, carryout;

task3 eightBitAdder(.A(A), .B(B), .Cin(Cin), .out(out), .carryOut(carryout));


initial begin
    
    A = 8'b00001111;
    B = 8'b00000001;
    Cin = 0; #10;
    
    A = 8'b11111111;
    B = 8'b11111111;
    Cin = 1; #10;    

    A = 8'b00000000;
    B = 8'b00000000;
    Cin = 0; #10;
    A = 8'b00001111;
    B = 8'b00000001;
    Cin = 1; #10;
      
    $finish;  
end



endmodule
