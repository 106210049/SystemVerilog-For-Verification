// Code your testbench here
// or browse Examples
module event_example();
  event e1;
  
  task process_A();
    $display("@%0t: Process A: Before triggering event e1", $time);
    ->e1;
    $display("@%0t: Process A: After triggering event e1", $time);
  endtask
  
  task process_B();
    $display("@%0t: Process B: waiting for the event e1 using @", $time);
    @e1;
    $display("@%0t: Process B: event e1 is triggered using @", $time);
  endtask

  task process_C();
    $display("@%0t: Process C: waiting for the event e1 using wait(e1.triggered)", $time);
    wait(e1.triggered);
    $display("@%0t: Process C: event e1 is triggered using wait(e1.triggered)", $time);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
      process_C();
    join
  end
endmodule
