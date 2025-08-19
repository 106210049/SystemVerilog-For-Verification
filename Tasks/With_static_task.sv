module With_static_task;
  int a, b;
  int out;

  task tk_multiply(ref int a, b, output int out);
    a = a*b; // static task
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;
 
    tk_multiply(a,b, out);
    $display("Task: out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule