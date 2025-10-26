// Code your testbench here
// or browse Examples
module semaphore_example();
  semaphore sem = new(3);
  
  task process_A();
    sem.get(3);
    $display("process_A is started");
    #5ns;
    $display("process_A is completed");
    sem.put(5);
  endtask

  task process_B();
    sem.get(5);  // Accessing more keys than initialized
    $display("process_B is started");
    #5ns;
    $display("process_B is completed");
    sem.put(5);
  endtask
  
  task process_C();
    sem.get(6);  // Accessing more keys than available in the bucket
    $display("process_C is started");
    #5ns;
    $display("process_C is completed");
    sem.put(5);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
      process_C();
    join
  end
endmodule