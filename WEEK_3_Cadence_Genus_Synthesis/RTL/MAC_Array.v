module mac_array #(
    parameter WIDTH = 8,
    parameter ACC_WIDTH = 24
)(
    input clk,
    input rst_n,
    input en,

    input signed [WIDTH-1:0] a0, a1, a2, a3,
    input signed [WIDTH-1:0] b0, b1, b2, b3,

    output signed [ACC_WIDTH-1:0] y0,
    output signed [ACC_WIDTH-1:0] y1,
    output signed [ACC_WIDTH-1:0] y2,
    output signed [ACC_WIDTH-1:0] y3
);

reg signed [ACC_WIDTH-1:0] acc0, acc1, acc2, acc3;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        acc0 <= 0;
        acc1 <= 0;
        acc2 <= 0;
        acc3 <= 0;
    end
    else if (en) begin
        acc0 <= acc0 + (a0 * b0);
        acc1 <= acc1 + (a1 * b1);
        acc2 <= acc2 + (a2 * b2);
        acc3 <= acc3 + (a3 * b3);
    end
end

assign y0 = acc0;
assign y1 = acc1;
assign y2 = acc2;
assign y3 = acc3;

endmodule
