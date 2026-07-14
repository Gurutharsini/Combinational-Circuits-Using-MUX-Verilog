

module ha_using_mux_tb;
 wire sum,carry;
 reg a,b;
ha_using_mux a1(.a(a),.b(b),.sum(sum),.carry(carry));
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
  $display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
endmodule
