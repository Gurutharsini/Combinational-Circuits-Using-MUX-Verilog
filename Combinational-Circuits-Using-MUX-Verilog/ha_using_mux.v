
module mux2x1(input i0,i1,s,output y);
  assign y=(~s&i0)|(s&i1);
endmodule

module ha_using_mux(input a,b,output sum,carry);

mux2x1 sum_mux(.y(sum),.i0(b),.i1(~b),.s(a));
mux2x1 carry_mux(.y(carry),.i0(1'b0),.i1(b),.s(a));
endmodule