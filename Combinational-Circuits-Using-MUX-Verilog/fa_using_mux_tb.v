
module fa_using_mux_tb;
 wire sum,carry;
 reg a,b,c;
fa_using_mux a1(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial
  begin
  $dumpfile("dump.vcd"); $dumpvars;
  {a,b,c}=3'b000;
  #10 {a,b,c}=3'b001;
  #10 {a,b,c}=3'b010;
  #10 {a,b,c}=3'b011;
  #10 {a,b,c}=3'b100;
  #10 {a,b,c}=3'b101;
  #10 {a,b,c}=3'b110;
  #10 {a,b,c}=3'b111;
  #10;
  $finish;
end
initial
  $display("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
endmodule
