`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2018 22:48:12
// Design Name: 
// Module Name: test_clk_div
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


module test_clk_div;
    reg clk;
    reg reset;
    reg [3:0]div;
    wire o_clk;
    clock_divider uut0
    (
        .clk_i (clk),
        .clk_o (o_clk),
        .div (div),
        .rst (reset)
    );
    initial 
    begin
        clk=0;
        reset=0;
        div=4'b0011;
        #4 reset<=1'b1;
        #7 reset<=1'b0;
        
        #200 div=4'b1001;
    end
    //generate clock
    
    
    always #5 clk=!clk;
    
endmodule
