
module tb_DSNN_2Layer;

parameter WIDTH=16;
parameter NEURONS1=4;
parameter NEURONS2=2;
parameter SAMPLES=500;

reg clk, rst;
reg [WIDTH-1:0] ecg_in;

// Flattened output from DSNN
wire [NEURONS2*WIDTH-1:0] layer2_out;

// DUT instantiation
DSNN_2Layer #(WIDTH, NEURONS1, NEURONS2) uut (
    .clk(clk),
    .rst(rst),
    .ecg_in(ecg_in),
    .layer2_out_flat(layer2_out)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk; // 100 MHz clock

// ECG data array
reg [WIDTH-1:0] ecg_data [0:SAMPLES-1];

integer i;
initial begin
    rst = 1; 
    #10 rst = 0;

    // Generate synthetic ECG: normal 1000–1200, abnormal spikes 1300–1500
    for(i=0; i<SAMPLES; i=i+1) begin
        if(i % 50 < 40)
            ecg_data[i] = 1000 + $urandom_range(0,200); // normal
        else
            ecg_data[i] = 1300 + $urandom_range(0,200); // abnormal
    end

    // Feed ECG data into DSNN
    for(i=0; i<SAMPLES; i=i+1) begin
        ecg_in = ecg_data[i];
        #10;
    end

    $finish();
end

endmodule

