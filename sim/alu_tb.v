`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 03:49:23 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [15:0]Inp1;
reg [15:0]Inp2;
reg [2:0]Opcode;
wire  [31:0] Result;


alu firstproject(
.Inp1(Inp1),
.Inp2(Inp2),
.Opcode(Opcode),
.Result(Result)
);
    
    initial #240 $finish;
    
   initial 
   begin 
   
   //Using long binary number in hex make it easy to catch
   
   //Addition { Inp1 + Inp2 }       
   
 Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 000;
  #10;
  Inp1=16'h7795;  
  Inp2= 16'h6958;
  Opcode= 000;
 #10;
  Inp1=12'haf1;  
 Inp2= 12'he55;
  Opcode= 000;
#10;
   //Subtraction { Inp1 - Inp2 }       
   
 Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 001;
 #10;
Inp1=16'h7795;  
Inp2= 16'h6958;
Opcode= 001;
#10;
 Inp1=12'haf1;  
 Inp2= 12'he55;
 Opcode= 001;
#10;
   //Multiplication  { Inp1 * Inp2 }       
   
 Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 010;
 #10;
 Inp1=16'h7795;  
 Inp2= 16'h6958;
 Opcode= 010;
#10;
 Inp1=12'haf1;  
 Inp2= 12'he55;
 Opcode= 010;
#10;

   //Division { Inp1 / Inp2 }        
   
  Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 011;
 #10;

  Inp1=16'h7795;  
  Inp2= 16'h6958;
  Opcode= 011;
 #10;
 Inp1=12'haf1;  
  Inp2= 12'he55;
  Opcode= 011;
#10;
   //Logical OR  { Inp1 | Inp2 }        
   
  Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 100;
 #10;
  Inp1=16'h7795;  
  Inp2= 16'h6958;
  Opcode= 100;
 #10;
  Inp1=12'haf1;  
  Inp2= 12'he55;
  Opcode= 100;
#10;
   //Logical AND{ Inp1 & Inp2 }        
   
 Inp1=12'habc;  
 Inp2= 12'hdef;
 Opcode= 101;
  #10;
  Inp1=16'h7795;  
  Inp2= 16'h6958;
  Opcode= 101;
 #10;
  Inp1=12'haf1;  
  Inp2= 12'he55;
  Opcode= 101;
 #10;
  //Logical NOT { ~ Inp1 }        
   
 Inp1=12'habc;  
 Inp2=16'hx;
 Opcode= 110;
  #10;
  Inp1=16'h7795;
  Inp2=16'hx;  
  Opcode= 110;
 #10;
 Inp1=12'haf1;
 Inp2=16'hx;  
  Opcode= 110;
#10;
 //Logical NOT { ~ Inp2 }       
   Inp1=16'hx;
 Inp2= 12'hdef;
 Opcode= 111;
 #10;
  Inp1=16'hx;
  Inp2= 16'h6958;
  Opcode= 111;
 #10;
 Inp1=16'hx;
  Inp2= 12'he55;
  Opcode= 111;
#10;
   end 
    
    
endmodule
