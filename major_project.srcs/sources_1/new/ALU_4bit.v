`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 06:54:53
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit(input [3:0]A,input [3:0]B,input [2:0]operator,output reg Cout,output reg [3:0]Y);
    always @(*)
    begin
        case(operator)
            3'b000:{Cout,Y}=A+B;
            3'b001:{Cout,Y}=A-B;
            3'b010:begin
                Y=A&B;
                Cout=0;
            end
            3'b011:begin
                Y=A|B;
                Cout=0;
            end
            3'b100:begin
                Y=A^B;
                Cout=0;
            end
            3'b101:begin
                Y=~A;
                Cout=0;
            end
            3'b110:begin
                Y=A<<1;
                Cout=0;
            end
            3'b111:begin
                Y=A>>1;
                Cout=0;
            end
            default:begin
                Y=4'b0000;
                Cout=0;
            end
        endcase
    end   
endmodule
