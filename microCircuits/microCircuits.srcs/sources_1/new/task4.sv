`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:20:40 PM
// Design Name: 
// Module Name: task4
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


module task4(
    input [3:0] a,
    input [3:0] b,
    output logic [7:0] p
    );
    logic [4:0] res1, res2, res3;
    
    assign res1 = {(1'b0), (b[0] & a[3]), (b[0] & a[2]), (b[0] & a[1])} + {(b[1] & a[3]), (b[1] & a[2]), (b[1] & a[1]), (b[1] & a[0])};
    assign res2 = {res1[4], res1[3], res1[2], res1[1]} + {(b[2] & a[3]), (b[2] & a[2]), (b[2] & a[1]), (b[2] & a[0])};
    assign res3 = {res2[4], res2[3], res2[2], res2[1]} + {(b[3] & a[3]), (b[3] & a[2]), (b[3] & a[1]), (b[3] & a[0])};
    
    
    assign p[0] = a[0] & b[0];
    assign p[1] = res1[0];
    assign p[2] = res2[0];
    assign p[7:3] = res3[4:0];

    
    
    
    
endmodule
