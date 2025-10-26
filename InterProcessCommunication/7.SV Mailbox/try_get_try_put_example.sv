// Code your testbench here
// or browse Examples
module mailbox_example();
  mailbox mb = new(3);
  
  task process_A();
    int value;
    repeat(5) begin
      value = $urandom_range(1, 50);
      if(mb.try_put(value))
        $display("successfully try_put data = %0d", value);
      else begin
        $display("failed while try_put data = %0d", value);
        $display("Number of messages in the mailbox = %0d", mb.num());
      end
    end
    $display("---------------------------------------");
  endtask

  task process_B();
    int value;
    repeat(5) begin
      if(mb.try_get(value))
        $display("Successfully retrieved try_get data = %0d", value);
      else begin
        $display("Failed in try_get data");
        $display("Number of messages in the mailbox = %0d", mb.num());
      end
    end
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule