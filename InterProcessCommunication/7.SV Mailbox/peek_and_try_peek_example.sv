// Code your testbench here
// or browse Examples
module mailbox_example();
  mailbox mb = new(3);
  
  task process_A();
    int value;
    repeat(3) begin
      value = $urandom_range(1, 50);
      mb.put(value);
      $display("put data = %0d", value);
    end
    $display("----------------------------------");
  endtask

  task process_B();
    int value;
    mb.peek(value); // message is not removed
    $display("peek data = %0d", value);
    mb.peek(value); // message is not removed
    $display("peek data = %0d", value);
    if(mb.try_peek(value))
      $display("Successful try_peek data = %0d", value);
    else begin
      $display("Failed in try_peek");
    end
    $display("----------------------------------");
    repeat(3) begin
      mb.get(value);
      $display("get data = %0d", value);
    end
   $display("----------------------------------");
   if(mb.try_peek(value))
      $display("Successful try_peek data = %0d", value);
    else begin
      $display("Failed in try_peek");
    end
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule