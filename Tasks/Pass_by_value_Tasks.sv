module Pass_by_value_Tasks;
  int a, b;
  int out;
  
  
  task tk_multiply(int a, b, output int out);
    a = a*b; //value of a is updated, it won't update global variables a and b
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;

    tk_multiply(a,b, out);
    $display("Task: out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule