module MAC #(parameter WIDTH=16)(
    input signed [WIDTH-1:0] a,
    input signed [WIDTH-1:0] b,
    input clk,
    input rst,
    output  signed [2*WIDTH-1:0] out
);
    reg signed [2*WIDTH-1:0] acc;

    always @(posedge clk or posedge rst) begin
        if(rst)
            acc <= 0;
        else
            acc <= acc + a*b;
    end

    assign out = acc;
endmodule
