module PinCounter (
    input sys_clk,
    input sys_rst_n, // reset mapped to button
    output reg pin_84,
    output reg out_z
);

// cunter state variable
reg[15:0] counter;

reg prev_sys_rst_n;

always @(posedge sys_clk ) begin

    if (sys_rst_n !== prev_sys_rst_n && !sys_rst_n) begin
        counter <= counter + 1;
        pin_84 = !pin_84;
    end
    //update previous pin value
    prev_sys_rst_n <= sys_rst_n;
end

endmodule