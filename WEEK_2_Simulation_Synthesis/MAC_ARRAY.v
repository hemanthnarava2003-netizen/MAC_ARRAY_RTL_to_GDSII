module mac_array #( 
    parameter WIDTH     = 8, 
    parameter ACC_WIDTH = 24 
)( 
    input                   clk, 
    input                   rst_n, 
    input                   en, 
    input  signed [WIDTH-1:0] a0, a1, a2, a3, 
    input  signed [WIDTH-1:0] b0, b1, b2, b3, 
    output reg signed [ACC_WIDTH-1:0] y0, 
    output reg signed [ACC_WIDTH-1:0] y1, 
    output reg signed [ACC_WIDTH-1:0] y2, 
    output reg signed [ACC_WIDTH-1:0] y3 
);  
    // internal accumulators 
    reg signed [ACC_WIDTH-1:0] acc0, acc1, acc2, acc3; 
    // internal product registers (wider) 
    reg signed [2*WIDTH-1:0] product0, product1, product2, product3; 
 
    always @(posedge clk) begin 
        if (!rst_n) begin 
            acc0 <= 'sd0; 
            acc1 <= 'sd0; 
            acc2 <= 'sd0; 
            acc3 <= 'sd0; 
            product0 <= 'sd0; 
            product1 <= 'sd0; 
            product2 <= 'sd0; 
            product3 <= 'sd0; 
        end else if (en) begin 
            product0 <= a0 * b0; 
            product1 <= a1 * b1; 
            product2 <= a2 * b2; 
            product3 <= a3 * b3; 
 
            acc0 <= acc0 + $signed(product0); 
            acc1 <= acc1 + $signed(product1); 
            acc2 <= acc2 + $signed(product2); 
            acc3 <= acc3 + $signed(product3); 
        end 
        // if en==0, hold acc values 
    end 
 
    // outputs follow accumulators 
    always @(*) begin 
        y0 = acc0; 
        y1 = acc1; 
        y2 = acc2; 
        y3 = acc3; 
    end 
 
endmodule

