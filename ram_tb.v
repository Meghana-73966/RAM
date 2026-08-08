`timescale 1ns/1ps

module ram_tb;

    reg clk;
    reg we;
    reg [2:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write 10101010 to address 0
        #10;
        we = 1;
        addr = 3'b000;
        din = 8'b10101010;

        // Write 11001100 to address 1
        #10;
        addr = 3'b001;
        din = 8'b11001100;

        // Read address 0
        #10;
        we = 0;
        addr = 3'b000;

        // Read address 1
        #10;
        addr = 3'b001;

        #10;
        $finish;
    end

endmodule