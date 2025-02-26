module Random_Circuit_39 (
    input A, B, clk, rst,
    output reg Q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 0;
        else
            Q <= (A ^ B) & ~(A & B) | ~A;  // XOR, NAND, NOT logic
    end
endmodule
