`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 03:36:59 PM
// Design Name: 
// Module Name: alu
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


module alu(
input [15:0]Inp1,
input [15:0]Inp2,
input [2:0]Opcode,
output reg [31:0] Result

    );
    always@ (Inp1,Inp2,Opcode)
    begin
    Result= 3'bxxx;
    casex(Opcode)
// Operation : Addition { Inp1 + Inp2 }
    3'b000: Result=  Inp1 + Inp2 ;
    
// Operation : Subtraction { Inp1 - Inp2 }
    3'b001: Result=  Inp1 - Inp2;
    
// Operation : Multiplication  { Inp1 * Inp2 }
    3'b010: Result=  Inp1 * Inp2 ;
    
// Operation : Division  { Inp1 / Inp2 } 
    3'b011: Result=  Inp1 / Inp2 ;
    
// Operation : Logical OR { Inp1 | Inp2 } 
    3'b100: Result=  Inp1 | Inp2 ;
    
// Operation : Logical AND { Inp1 & Inp2 } 
    3'b101: Result=  Inp1 & Inp2 ;
    
// Operation : Logical NOT { ~ Inp1 } 
    3'b110: Result= ~Inp1 ;
    
// Operation : Logical NOT { ~ Inp2 }
    3'b111: Result= ~Inp2 ;
    
    default Result= 3'bxxx;
    endcase 
    end
endmodule
