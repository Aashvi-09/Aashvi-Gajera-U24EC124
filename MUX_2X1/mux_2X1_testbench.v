// Code your testbench here
// or browse Examples
module mux_2X1_testbench;
  reg i0, i1, s;
  wire Q;

  // Instantiate the MUX
  mux_2X1_dataflow uut (
    .i0(i0),
    .i1(i1),
    .s(s),
    .Q(Q)
  );

  initial begin
//     $dumpfile("mux_2X1.vcd");  
//     $dumpvars(0, mux_2X1_testbench); 
    $display("i0 i1 s | Q");
    $monitor("%b  %b  %b | %b", i0, i1, s, Q);
    
    i0 = 0; i1 = 0; s = 0; #10;
    i0 = 0; i1 = 1; s = 0; #10;
    i0 = 1; i1 = 0; s = 0; #10;
    i0 = 1; i1 = 1; s = 0; #10;
    i0 = 0; i1 = 0; s = 1; #10;
    i0 = 0; i1 = 1; s = 1; #10;
    i0 = 1; i1 = 0; s = 1; #10;
    i0 = 1; i1 = 1; s = 1; #10;
    $finish;
  end
endmodule
