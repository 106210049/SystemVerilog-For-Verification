module task_example;
  
  task compare(input int a, b, output bit [1:0] done);
    if(a>b) begin 
      done = 2'h1;
      return;
      $display("a > b comparison completed");
    end
    
    if(a<b) begin
      done = 2'h2;
      return;
      $display("a < b comparison completed");
    end
    
    if(a == b) begin 
      done = 2'h3; 
      return;
      $display("a == b comparison completed");
    end
  endtask
  
  initial begin
    bit [1:0] done;
    int a, b;
    
    repeat(5) begin
      a = $urandom_range(5, 20);
      b = $urandom_range(5, 20);
      $display("input a = %0d, input b = %0d", a, b);
      compare(a,b, done);
      if(done == 2'h1) $display("a is greater than b");
      if(done == 2'h2) $display("a is less than b");
      if(done == 2'h3) $display("a is equal to b");
      $display("------------------------");
    end
  end
endmodule