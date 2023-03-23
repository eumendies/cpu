`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/22 11:59:05
// Design Name: 
// Module Name: PC_adder
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


module PC_adder(
    input clk,
    input[63:0] nowPC,
    input[63:0] ID_EX_PC,
    input[63:0] imm,
    input Branch,
    input Zero,
    output[63:0] newPC
    );
    
    reg[63:0] result;
    initial begin result <= 4; end
    always@(*) begin
        // 如果需要跳转，更新PC为ID_EX_PC + imm
        // 如果不需要跳转，将现在用于取指的PC加上4
        if (Branch && Zero) result <= ID_EX_PC + imm;
        else result <= nowPC + 4; 
    end
    assign newPC = result;
    
endmodule
