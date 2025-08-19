module With_const_ref_keyword;
  int a, b;
  int out;
   
  task automatic tk_multiply(const ref int a, b, output int out);
    a = a*b; // expects compilation error when subroutine tries to modify argument value.
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;

    tk_multiply(a,b, out);
    $display("Function: out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule