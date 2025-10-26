// Code your testbench here
// or browse Examples
module mailbox_example();
  mailbox mb = new();
  
  task process_A();
    int value;
    repeat(10) begin
      value = $urandom_range(1, 50);
      mb.put(value);
      $display("Put data = %0d", value);
    end
    $display("----------------------");
  endtask

  task process_B();
    int value;
    repeat(10) begin
      mb.get(value);
      $display("Retrieved data = %0d", value);
    end
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule