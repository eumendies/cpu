`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/01 14:55:35
// Design Name: 
// Module Name: CPU
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


module CPU(
    input clk,
    input rstn,
    input[15:0] sw_i,
    output[7:0] disp_an_o, disp_seg_o
    );
    
    // 时钟分频
    wire Clk_CPU;
    Clk_div U_clk(.clk(clk), .rstn(rstn), .sw_i(sw_i), .Clk_CPU(Clk_CPU));
    
    // PC寄存器
    wire[63:0] newPC;
    wire[63:0] nowPC;
    PC_reg U_PC(.clk(clk), .rstn(rstn), .nextPC(newPC), .nowPC(nowPC));
    
    // 指令存储器
    wire[31:0] instr;
    ROM U_imem(.PC(nowPC), .instr(instr));
    
    // IF/ID流水线寄存器的值
    wire[63:0] IF_ID_PC;
    wire[31:0] IF_ID_instr;
    
    // ID/EX流水线寄存器的值    
    wire[63:0] ID_EX_PC, ID_EX_imm, ID_EX_RD1, ID_EX_RD2;
    wire[31:0] ID_EX_instr;
    wire ID_EX_regwrite, ID_EX_ALUSrc, ID_EX_MemRead;
    wire ID_EX_MemWrite, ID_EX_MemtoReg, ID_EX_Branch;
    wire[3:0] ID_EX_ALUControl;
    
    // EX/MEM流水线寄存器的值
    wire[31:0] EX_MEM_instr;
    wire[63:0] EX_MEM_PC, EX_MEM_alu_result, EX_MEM_RD2;
    wire EX_MEM_regwrite, EX_MEM_MemRead;
    wire EX_MEM_MemWrite, EX_MEM_MemtoReg;
    
    // MEM/WB流水线寄存器的值
    wire[31:0] MEM_WB_instr;
    wire[63:0] MEM_WB_alu_result, MEM_WB_mem_data;
    wire MEM_WB_regwrite, MEM_WB_MemtoReg;
    
    IF_ID_reg reg1(.clk(clk), .instr(instr), .PC(nowPC), 
                   .IF_ID_instr(IF_ID_instr), .IF_ID_PC(IF_ID_PC));
 
    // 控制信号
    wire regwrite, ALUSrc, MemRead, MemWrite, MemtoReg, Branch;
    wire[3:0] ALUControl;
    Controller U_controller(.instr(IF_ID_instr), .regwrite(regwrite),
                        .ALUSrc(ALUSrc), .ALUControl(ALUControl), .MemRead(MemRead),
                        .MemWrite(MemWrite), .MemtoReg(MemtoReg), .Branch(Branch));
    
    // 立即数
    wire[63:0] imm;
    ImmGen U_imm(.instr(IF_ID_instr), .imm(imm));
    
    // 寄存器堆
    wire[63:0] WD;
    wire[63:0] RD1, RD2; 
    RegFile U_RF(.clk(clk), .rstn(rstn), .RFWr(MEM_WB_regwrite),
             .rs1(IF_ID_instr[19:15]), .rs2(IF_ID_instr[24:20]), .rd(MEM_WB_instr[11:7]),
             .WD(WD), .RD1(RD1), .RD2(RD2));

    // ID/EX流水线寄存器
    // 保存指令、PC、立即数、寄存器读取的数据、控制信号
    ID_EX_reg reg2(.clk(clk), .instr(IF_ID_instr), .PC(IF_ID_PC), .imm(imm), .RD1(RD1), .RD2(RD2),
                   .regwrite(regwrite), .ALUSrc(ALUSrc), .MemRead(MemRead), 
                   .MemWrite(MemWrite), .MemtoReg(MemtoReg),.Branch(Branch),
                   .ALUControl(ALUControl),
                   .ID_EX_instr(ID_EX_instr), .ID_EX_PC(ID_EX_PC), .ID_EX_imm(ID_EX_imm),
                   .ID_EX_RD1(ID_EX_RD1), .ID_EX_RD2(ID_EX_RD2),
                   .ID_EX_regwrite(ID_EX_regwrite), .ID_EX_ALUSrc(ID_EX_ALUSrc), 
                   .ID_EX_MemRead(ID_EX_MemRead), .ID_EX_MemWrite(ID_EX_MemWrite), 
                   .ID_EX_MemtoReg(ID_EX_MemtoReg), .ID_EX_Branch(ID_EX_Branch),
                   .ID_EX_ALUControl(ID_EX_ALUControl));
 
    // ALU操作数2
    wire[63:0] src2; 
    Mux_2 U_alu_mux(.opt1(ID_EX_RD2), .opt2(ID_EX_imm), .control(ID_EX_ALUSrc), .result(src2));
    
    // 零输出信号
    wire Zero; 
    // ALU计算结果
    wire[63:0] alu_result;
    ALU U_ALU(.A(ID_EX_RD1), .B(src2), .ALUControl(ID_EX_ALUControl), .C(alu_result), .Zero(Zero));
    
    // PC加法器
    PC_adder U_PCadder(.clk(clk), .nowPC(nowPC), .ID_EX_PC(ID_EX_PC),
                       .imm(ID_EX_imm), .Branch(ID_EX_Branch), .Zero(Zero), .newPC(newPC));

    // EX/MEM流水线寄存器
    EX_MEM_reg reg3(.clk(clk), .instr(ID_EX_instr), .PC(ID_EX_PC), .alu_result(alu_result),
                    .RD2(ID_EX_RD2), .regwrite(ID_EX_regwrite), .MemRead(ID_EX_MemRead), 
                    .MemWrite(ID_EX_MemWrite), .MemtoReg(ID_EX_MemtoReg),
                    .EX_MEM_instr(EX_MEM_instr), .EX_MEM_PC(EX_MEM_PC), 
                    .EX_MEM_alu_result(EX_MEM_alu_result), .EX_MEM_RD2(EX_MEM_RD2),
                    .EX_MEM_regwrite(EX_MEM_regwrite), .EX_MEM_MemRead(EX_MEM_MemRead),
                    .EX_MEM_MemWrite(EX_MEM_MemWrite), .EX_MEM_MemtoReg(EX_MEM_MemtoReg));
    
    // 数据存储器
    wire[63:0] mem_data;
    RAM U_RAM(.clk(clk), .rstn(rstn), .MemWrite(EX_MEM_MemWrite), .MemRead(EX_MEM_MemRead), 
              .address(EX_MEM_alu_result), .WD(EX_MEM_RD2), .ReadData(mem_data));
    
    MEM_WB_reg reg4(.clk(clk), .instr(EX_MEM_instr), .alu_result(EX_MEM_alu_result), .mem_data(mem_data),
                    .regwrite(EX_MEM_regwrite), .MemtoReg(EX_MEM_MemtoReg), 
                    .MEM_WB_instr(MEM_WB_instr), .MEM_WB_alu_result(MEM_WB_alu_result),
                    .MEM_WB_mem_data(MEM_WB_mem_data), .MEM_WB_regwrite(MEM_WB_regwrite),
                    .MEM_WB_MemtoReg(MEM_WB_MemtoReg));
    
    // 写回多选器
    Mux_2 U_WB_mux(.opt1(MEM_WB_alu_result), .opt2(MEM_WB_mem_data), .control(MEM_WB_MemtoReg), .result(WD));
    
    reg[4:0] reg_addr;
    reg[63:0] reg_data;
    // 循环产生寄存器号并取寄存器内容
    always@(posedge Clk_CPU or negedge rstn) begin
        if (!rstn) begin reg_addr = 5'b0; end
        else if (sw_i[1] && sw_i[13]) begin
            reg_addr = reg_addr + 1'b1;
            reg_data = U_RF.rf[reg_addr];
        end
    end
    
    // LED展示
    // 选择展示内容
    reg[63:0] display_data;
    always@(sw_i or instr or nowPC) begin
        if (sw_i[0] == 0) begin
            case (sw_i[14:11])
                4'b1000: display_data = instr;
                4'b0100: display_data = reg_data;
                default: display_data = nowPC;
            endcase end
        else begin display_data = 64'b1; end
    end
    
    seg7x16 u_seg7x16(
        .clk(clk),
        .rstn(rstn),
        .i_data(display_data),
        .disp_mode(sw_i[0]),
        .o_seg(disp_seg_o),
        .o_sel(disp_an_o)
    );  
endmodule
