module mux4x1(input i0,i1,i2,i3,s0,s1,output y);
    assign y=(~s1&~s0&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);
endmodule

module fa_using_mux(input a,b,c,output sum,carry);
mux4x1 sum_mux(.y(sum),.i0(c),.i1(~c),.i2(~c),.i3(c),.s0(b),.s1(a));
mux4x1 carry_mux(.y(carry),.i0(1'b0),.i1(c),.i2(c),.i3(1'b1),.s0(b),.s1(a));
endmodule