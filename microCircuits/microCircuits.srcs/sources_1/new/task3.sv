`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:39:11 PM
// Design Name: 
// Module Name: task3
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




module task3(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output logic [7:0] out,
    output logic carryOut
    );
    logic [3:0] aOne, aTwo, bOne, bTwo;
    logic Cout_tmp;
    
    assign aOne = A[3:0];
    assign aTwo = A[7:4];
    assign bOne = B[3:0];
    assign bTwo = B[7:4];
    
    logic [4:0] res_tmp;
    
    
    
    
    
    always @(*) begin
    res_tmp = aOne + bOne + Cin;
    out[3:0] = res_tmp[3:0];
    Cout_tmp = res_tmp[4];
    
    res_tmp = aTwo + bTwo + Cout_tmp;
    out[7:4] = res_tmp[3:0];
    carryOut = res_tmp[4];
    
    
    end
    
    
    
     
    
    
    
endmodule
