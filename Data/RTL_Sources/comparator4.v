module Comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output reg A_eq_B,  // A = B
    output reg A_gt_B,  // A > B
    output reg A_lt_B   // A < B
);
    always @(A, B)
    begin
        if (A == B) begin
            A_eq_B = 1;
            A_gt_B = 0;
            A_lt_B = 0;
        end
        else if (A > B) begin
            A_eq_B = 0;
            A_gt_B = 1;
            A_lt_B = 0;
        end
        else begin
            A_eq_B = 0;
            A_gt_B = 0;
            A_lt_B = 1;
        end
    end
endmodule
