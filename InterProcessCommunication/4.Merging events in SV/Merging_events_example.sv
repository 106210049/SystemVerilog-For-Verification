// Code your testbench here
// or browse Examples
module event_example();
  event e1, e2;
  
  task process_A();
    e2 = e1;
    #10;
    ->e2;
    $display("@%0t: process_A: event e2 is triggered", $time);
  endtask
  
  task process_B();
    $display("@%0t: process_B: waiting for the event e1", $time);
    wait(e1.triggered);
    $display("@%0t: process_B: event e1 is received", $time);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule