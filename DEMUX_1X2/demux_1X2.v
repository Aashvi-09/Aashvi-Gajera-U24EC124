// Code your design here
module demux_1X2_datafow(
  input wire in,
  input wire s,
  output reg Q0,
  output reg Q1
);
  assign Q0 = (~s & in);
  assign Q1 = (s & in);
endmodule
