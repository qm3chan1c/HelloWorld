`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: --
// Engineer: QJ
// 
// Create Date: 06/17/2025 10:12:12 PM
// Design Name: 
// Module Name: HelloWorld
// Project Name: HelloWorld
// Target Devices: Basys 3
// Tool Versions: Vivado 2024.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HelloWorld(
    
    input clk_in,
    output reg [3:0] anode_out,
    output reg [7:0] digit_out
    
    );
    
    reg [31:0] counter_temp = 32'b00000000000000000000000000000000;
    
    always @(posedge clk_in) begin
    
        if (counter_temp <  32'b00000000000000011000011010100000) begin
            counter_temp <= counter_temp + 1;
            anode_out <= 4'b0111;
            digit_out <= 8'b10001001;
        
        end else if ((counter_temp <  32'b00000000000000110000110101000000) & (counter_temp >=  32'b00000000000000011000011010100000)) begin
            counter_temp <= counter_temp + 1;
            anode_out <= 4'b1011;
            digit_out <= 8'b10000110;
            
        end else if ((counter_temp <  32'b00000000000001001001001111100000) & (counter_temp >=  32'b00000000000000110000110101000000)) begin
            counter_temp <= counter_temp + 1;
            anode_out <= 4'b1101;
            digit_out <= 8'b10010001;
            
        end else begin
            counter_temp <= 32'b00000000000000000000000000000000;
            anode_out <= 4'b1111;
            digit_out <= 8'b11111111;
        end
        
    end
endmodule
