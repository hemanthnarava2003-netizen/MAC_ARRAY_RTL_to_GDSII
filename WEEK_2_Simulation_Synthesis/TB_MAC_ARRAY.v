module tb_mac_array; 
 
    parameter WIDTH = 8; 
    parameter ACC_WIDTH = 24; 
    parameter NUM_COL = 4; 
 
    logic clk; 
    logic rst_n; 
    logic en; 
 
    logic signed [WIDTH-1:0] a [NUM_COL]; 
    logic signed [WIDTH-1:0] b [NUM_COL]; 
    logic signed [ACC_WIDTH-1:0] y [NUM_COL]; 
 
    // Instantiate the MAC array 
    mac_array #( 
        .WIDTH(WIDTH), 
        .ACC_WIDTH(ACC_WIDTH), 
        .NUM_COL(NUM_COL) 
    ) dut ( 
        .clk(clk), 
        .rst_n(rst_n), 
        .en(en), 
        .a(a), 
        .b(b), 
        .y(y) 
    ); 
 
    // Clock generation 
    initial clk = 0; 
    always #5 clk = ~clk; // 100 MHz clock 
 
    integer i; 
    initial begin 
        // Reset 
        rst_n = 0; 
        en = 0; 
        repeat (2) @(posedge clk); 
        rst_n = 1; 
        @(posedge clk); 
 
        // Enable accumulation 
        en = 1; 
 
        // Provide input values 
        a[0] = 8'sd3;  b[0] = 8'sd4;   // 12 
        a[1] = -8'sd2; b[1] = 8'sd5;   // -10 
        a[2] = 8'sd7;  b[2] = -8'sd1;  // -7 
        a[3] = 8'sd1;  b[3] = 8'sd1;   // 1 
 
        // Run for several cycles 
        repeat (10) @(posedge clk); 
 
        // Display outputs 
        $display("MAC Array Outputs:"); 
        for (i = 0; i < NUM_COL; i = i + 1) 
            $display("y[%0d] = %0d", i, y[i]); 
 
        $finish; 
    end  
endmodule
