module event_example();
  event e1, e2, e3;
  
  task process_A();
    #5;
    ->e1;
    $display("@%0t: process_A: event e1 is triggered", $time);
  endtask
  
  task process_B();
    #15;
    ->e2;
    $display("@%0t: process_B: event e2 is triggered", $time);
  endtask
  
  task process_C();
    #10;
    ->e3;
    $display("@%0t: process_C: event e3 is triggered", $time);
  endtask
  
  // wait for event triggering in out of order (e2, e1, e3)
  task wait_process();
    $display("@%0t: waiting for the events e2, e1, e3", $time);
    wait_order(e2, e1, e3)
      $display("Events are triggered in order");
    else
      $display("Events are triggered out of order");
  endtask

  initial begin
    fork
      process_A();
      process_B();
      process_C();
      wait_process();
    join
  end
endmodule