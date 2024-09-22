`timescale 1ns / 100ps
module tb;

parameter period = 10;
parameter delay = 5;

reg clk;
reg [9:0] y_input;
reg start;
reg rst_n;
wire [7:0] x_guess;
wire done;

functional_unit U0(.clk(clk),.y_input(y_input),.start(start),.rst_n(rst_n),.x_guess(x_guess),.done(done));

initial begin
$sdf_annotate("./hw1_syn.sdf",U0);
$fsdbDumpfile("../4.Simulation_Result/hw1_syn.fsdb");
$fsdbDumpvars;
end

    always #(period / 2) clk = ~clk;

    initial begin
        clk = 1;
        rst_n = 1;
        start = 0;
        
        #(period + delay) rst_n = 0;
        #(period*2) rst_n = 1; 
	#(period) start = 1;
        y_input=10'd550;
        #(period) start = 0;

        @(negedge done);
        @(posedge clk);
        #(delay) start = 1; 
        y_input=10'd800;
        #(period) start = 0;

        @(negedge done);
        @(posedge clk);
        #(delay*3) rst_n = 0;
        #(period * 5) $finish;
    end

    // Automatically finish
    initial begin
        #300;
        $finish;
    end

endmodule
