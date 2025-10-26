// Code your testbench here
// or browse Examples
module semaphore_example();
  semaphore sem = new(3);
  
  task process_A();
    sem.get(3);
    $display("process_A started");
    #5ns;
    $display("process_A completed");
    sem.put(3);
  endtask
  
  task process_B();
    sem.get(2);
    $display("process_B started");
    #4ns;
    $display("process_B completed");
    sem.put(2);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule