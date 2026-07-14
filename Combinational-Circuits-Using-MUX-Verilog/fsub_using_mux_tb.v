module fsub_using_mux_tb;
 wire diff,borr;
 reg a,b,c;
fsub_using_mux a1(.a(a),.b(b),.c(c),.diff(diff),.borr(borr));
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
  $display("a=%b,b=%b,c=%b,diff=%b,borr=%b",a,b,c,diff,borr);
endmodule
