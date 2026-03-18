module DataShift #(parameter WIDTH=16)(
    input [WIDTH-1:0] data_in,
    input clk,
    input rst,
    output reg [WIDTH-1:0] data_out
);
    always @(posedge clk or posedge rst) begin
        if(rst)
            data_out <= 0;
        else
            data_out <= {data_in[WIDTH-2:0], data_in[WIDTH-1]}; // simple circular left shift
    end
endmodule
