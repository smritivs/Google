module down_counter_8bit(
    input clk,
    input reset,
    input enable,
    output reg [7:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 8'hFF;
        else if (enable)
            count <= count - 1;
    end
endmodule