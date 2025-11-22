module mac_array #( 
    parameter WIDTH = 16, 
    parameter ACC_WIDTH = 32, 
    parameter NUM_COL = 4 
)( 
    input  logic clk, 
    input  logic rst_n, 
    input  logic en, 
    input  var logic signed [WIDTH-1:0] a [NUM_COL], 
    input  var logic signed [WIDTH-1:0] b [NUM_COL], 
    output var logic signed [ACC_WIDTH-1:0] y [NUM_COL] 
); 
 
    logic signed [ACC_WIDTH-1:0] acc [NUM_COL]; 
    logic signed [2*WIDTH-1:0] product [NUM_COL]; 
 
    integer i; 
    always_ff @(posedge clk) begin 
        if (!rst_n) begin 
            for (i = 0; i < NUM_COL; i = i + 1) begin 
                acc[i] <= '0; 
            end 
        end else if (en) begin 
            for (i = 0; i < NUM_COL; i = i + 1) begin 
                product[i] = a[i] * b[i]; 
                acc[i] <= acc[i] + $signed(product[i]); 
            end 
        end 
    end 
 
    assign y = acc; 
 
endmodule 
