`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2018 22:35:37
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk_i,
    input [3:0] div,
    input rst,
    output [0:0] clk_o
    );
reg [3:0] p_div;
reg [3:0] n_div;
assign clk_o= !(p_div[1] & n_div[1]);
always @ (posedge clk_i)
begin
    if (rst == 1) 
    begin
        p_div<=4'b0001;
    end
    else
    begin
        if (p_div==div)
        begin
            p_div<=4'b0001;
        end
        else
        begin
            p_div<=p_div+4'b0001;
        end
    end   
end

always @ (negedge clk_i)
begin
    if (rst == 1) 
    begin
        n_div<=4'b0001;
    end
    else
    begin
        if (n_div==div)
        begin
            n_div<=4'b0001;
        end
        else
        begin
            n_div<=n_div+4'b0001;
        end
    end   
end


endmodule





