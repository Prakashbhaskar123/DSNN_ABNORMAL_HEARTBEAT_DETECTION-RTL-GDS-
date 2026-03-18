module Neuron #(parameter WIDTH=16)(
    input signed [2*WIDTH-1:0] mac_out,
    output reg signed [WIDTH-1:0] neuron_out
);
    always @(*) begin
        if(mac_out < 0)
            neuron_out = 0;
        else
            neuron_out = mac_out[WIDTH-1:0];
    end
endmodule
