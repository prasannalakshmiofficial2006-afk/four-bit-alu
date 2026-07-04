`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 07:05:56
// Design Name: 
// Module Name: ALU_4bit_tb
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

module ALU_4bit_tb( );
    reg [3:0]A;
    reg [3:0]B;
    reg [2:0]sel;
    wire Carry;
    wire [3:0]Y;
    ALU_4bit uut(.A(A),.B(B),.operator(sel),.Cout(Carry),.Y(Y));
    initial
    begin
        A=4'b0101;
        B=4'b0111;
        sel=3'b000;
        #20 sel=3'b001;
        #20 sel=3'b010;
        #20 sel=3'b011;
        #20 sel=3'b100;
        #20 sel=3'b101;
        #20 sel=3'b110;
        #20 sel=3'b111;
        #20 sel=3'b000;
        #50 $finish;
    end
endmodule

