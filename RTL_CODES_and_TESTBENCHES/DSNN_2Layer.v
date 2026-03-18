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
module DSNN_2Layer #(parameter WIDTH=16, NEURONS1=4, NEURONS2=2)(
    input clk,
    input rst,
    input [WIDTH-1:0] ecg_in,
    output [NEURONS2*WIDTH-1:0] layer2_out_flat
);
    wire [WIDTH-1:0] shifted_data;
    wire signed [2*WIDTH-1:0] layer1_mac_out [0:NEURONS1-1];
    wire [WIDTH-1:0] layer1_out [0:NEURONS1-1];
    wire signed [2*WIDTH-1:0] layer2_mac_out [0:NEURONS2-1];

    DataShift #(WIDTH) ds (.data_in(ecg_in), .clk(clk), .rst(rst), .data_out(shifted_data));

    genvar i;
    generate
        for(i=0; i<NEURONS1; i=i+1) begin : layer1
            MAC #(WIDTH) mac1 (.a(shifted_data), .b(i+1), .clk(clk), .rst(rst), .out(layer1_mac_out[i]));
            Neuron #(WIDTH) neuron1 (.mac_out(layer1_mac_out[i]), .neuron_out(layer1_out[i]));
        end
    endgenerate

    genvar j;
integer k;

generate
    for(j=0; j<NEURONS2; j=j+1) begin : layer2
        reg signed [2*WIDTH-1:0] acc;
        always @(posedge clk or posedge rst) begin
            if(rst)
                acc <= 0;
            else begin
                acc <= 0;
                for(k=0; k<NEURONS1; k=k+1)
                    acc <= acc + layer1_out[k]*(j+1);
            end
        end
        assign layer2_mac_out[j] = acc;
    end
endgenerate

    // Flatten layer2 outputs for older NCVerilog
    genvar n;
    generate
        for(n=0; n<NEURONS2; n=n+1) begin : flatten
            assign layer2_out_flat[(n+1)*WIDTH-1:n*WIDTH] = layer2_mac_out[n][WIDTH-1:0];
        end
    endgenerate
endmodule
