// Code your design here
module mux_2X1_dataflow(
  input wire i0,
  input wire i1,
  input wire s,
  output wire Q
);
  assign Q = (~s & i0) | (s & i1);
endmodule
