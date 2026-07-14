module mux2x1(input i0,i1,s,output y);
  assign y=(~s&i0)|(s&i1);
endmodule

module hsub_using_mux(input a,b,output diff,borr);
 mux2x1 diff_mux(.y(diff),.i0(b),.i1(~b),.s(a));
 mux2x1 borr_mux(.y(borr),.i0(b),.i1(1'b0),.s(a));
 endmodule