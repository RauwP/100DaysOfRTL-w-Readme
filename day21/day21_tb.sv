`timescale 1ns/1ps
module day21_tb ();

  localparam WIDTH = 16;

  logic[WIDTH-1:0] vec_i;
  logic[WIDTH-1:0] second_bit_o;

  day21 #(WIDTH) DAY21 (.*);

  initial begin
 	$dumpfile("day21.vcd");
	$dumpvars(0, day21_tb);
    for (int i=0; i<64; i=i+1) begin
      vec_i = $urandom_range(0, 2**WIDTH-1);
      #5;
    end
  end

endmodule