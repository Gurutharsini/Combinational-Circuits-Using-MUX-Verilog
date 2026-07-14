module hsub_using_mux_tb;
 wire diff,borr;
 reg a,b;
ha_using_mux a1(.a(a),.b(b),.diff(diff),.borr(borr));
initial
  begin
  $dumpfile("dump.vcd"); $dumpvars;
  {a,b}=2'b00;
  #10 {a,b}=2'b01;
  #10 {a,b}=2'b10;
  #10 {a,b}=2'b11;
  #10;
  $finish;
end
initial
  $display("a=%b,b=%b,diff=%b,borr=%b",a,b,diff,borr);
endmodule
