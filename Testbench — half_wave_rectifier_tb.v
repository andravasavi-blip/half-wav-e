`timescale 1ns/1ps

module half_wave_rectifier_tb;

reg signed [7:0] vin;
wire signed [7:0] vout;

half_wave_rectifier uut (
    .vin(vin),
    .vout(vout)
);

initial begin

    $display("Time\tInput\tOutput");
    $monitor("%0t\t%d\t%d", time, vin, vout);

    vin = 8'sd0;    #10;
    vin = 8'sd5;    #10;
    vin = 8'sd10;   #10;
    vin = 8'sd15;   #10;
    vin = 8'sd10;   #10;
    vin = 8'sd5;    #10;
    vin = 8'sd0;    #10;
    vin = -8'sd5;   #10;
    vin = -8'sd10;  #10;
    vin = -8'sd15;  #10;
    vin = -8'sd10;  #10;
    vin = -8'sd5;   #10;

    $finish;

end

endmodule