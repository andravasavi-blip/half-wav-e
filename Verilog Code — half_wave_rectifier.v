module half_wave_rectifier (
    input  signed [7:0] vin,
    output reg signed [7:0] vout
);

always @(*) begin
    if (vin > 0)
        vout = vin;
    else
        vout = 0;
end

endmodule