// Code your testbench here
// or browse Examples
module semaphore_example();
  semaphore sem = new(1);
  
  task process_A();
    if(sem.try_get()) 
      $display("process_A: Key received");
    else 
      $display("process_A: Key is not available");
    $display("process_A started");
    #5ns;
    $display("process_A completed");
    sem.put();
  endtask
  
  task process_B();
    if(sem.try_get()) 
      $display("process_B: Key received");
    else 
      $display("process_B: Key is not available");
    $display("process_B started");
    #4ns;
    $display("process_B completed");
    sem.put();
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
