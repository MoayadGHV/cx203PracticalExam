`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 03:04:51 PM
// Design Name: 
// Module Name: circuits_task1
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


module circuits_task1(
    input clk,
    input reset, 
    output [3:0] regO
    );



    
    logic [7:0] inst;
    logic j, c, d1, d0, sreg, s;
    logic [2:0] imm;
    
    logic [3:0] addressIndex, regAout, regBout;
    
    assign j = inst[7];
    assign c = inst[6];
    assign d1 = inst[5];
    assign d0 = inst[4];
    assign sreg = inst[3];
    assign s = inst[2];
    assign imm = inst[2:0];
    
    
    
    logic [3:0] ALUout, MUXout, muxAout, muxBout1, muxBout2;
    logic ALUcarry, enA, enB, enO, Cout, PCen;

    
    
    programcounter pc(.in(imm), .en(PCen), .reset(reset), .clk(clk), .out(addressIndex));
    ROM rom(.address(addressIndex), .instruction(inst));
    
    mux #(4) mux(.in1(imm), .in2(ALUout), .select(sreg), .outM(MUXout));
    Decoder decoder(.De({d1, d0}), .Den({enA, enB, enO}));
    
    register #(4) RA(.in(MUXout), .clk(clk), .en(enA), .reset(reset), .out(regAout));
    register #(4) RB(.in(MUXout), .clk(clk), .en(enB), .reset(reset), .out(regBout));
    register #(4) RO(.in(regAout), .clk(clk), .en(enO), .reset(reset), .out(regO));
    
    
    // for multiplier
    muxS #(4) mux0(.in1(regAout), .in2(regBout), .select(j & ~c & ~s), .outM(muxBout1));
    
    // ra = rb
    muxS #(4) mux1(.in1(4'b0), .in2(regAout), .select(j & c & s), .outM(muxAout));
    
    // rb = ra
    muxS #(4) mux2(.in1(4'b0), .in2(muxBout1), .select(~j & c & s), .outM(muxBout2));

    
    ALU  #(4) alu(.a(muxAout), .b(muxBout2), .op(s), .out(ALUout), .carryOut(ALUcarry));
    
    RDff carryff(.clk(clk), .reset(reset), .ld(1'b1), .D(ALUcarry), .Q(Cout));
    
    assign PCen = (j & ~c & ~s) | (c & ~s & ~j & Cout);
    

endmodule
