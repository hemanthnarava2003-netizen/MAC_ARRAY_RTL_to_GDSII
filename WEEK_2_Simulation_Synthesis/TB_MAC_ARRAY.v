module tb_mac_array;
    parameter WIDTH     = 8;
    parameter ACC_WIDTH = 24;

    reg clk;
    reg rst_n;
    reg en;

    reg signed [WIDTH-1:0] a0, a1, a2, a3;
    reg signed [WIDTH-1:0] b0, b1, b2, b3;

    wire signed [ACC_WIDTH-1:0] y0, y1, y2, y3;

    mac_array #(WIDTH, ACC_WIDTH) dut (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .a0(a0), .a1(a1), .a2(a2), .a3(a3),
        .b0(b0), .b1(b1), .b2(b2), .b3(b3),
        .y0(y0), .y1(y1), .y2(y2), .y3(y3)
    );

    // clock
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // initial values
        rst_n = 0;
        en = 0;

        a0 = 0; a1 = 0; a2 = 0; a3 = 0;
        b0 = 0; b1 = 0; b2 = 0; b3 = 0;

        // reset for 2 cycles
        repeat(2) @(posedge clk);
        rst_n = 1;

        // wait one cycle
        @(posedge clk);

        // apply inputs
        en = 1;
        a0 = 3;   b0 = 4;    // +12
        a1 = -2;  b1 = 5;    // -10
        a2 = 7;   b2 = -1;   // -7
        a3 = 1;   b3 = 1;    // +1

        // run 10 cycles
        repeat(10) @(posedge clk);

        $display("y0=%0d y1=%0d y2=%0d y3=%0d", y0, y1, y2, y3);

        #20;
        $finish;
    end
endmodule

