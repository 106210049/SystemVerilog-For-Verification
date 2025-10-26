// Code your testbench here
// or browse Examples
module event_example();
  event e1;

  task process_A();
    $display("@%0t: process_A: Before triggering event e1 using ->>", $time);
    ->>e1;
    $display("@%0t: process_A: After triggering event e1 using ->>", $time);
  endtask
  
  task process_B();
    $display("@%0t: process_B: waiting for the event e1", $time);
    @(e1.triggered);
    $display("@%0t: process_B: event e1 is triggered", $time);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule