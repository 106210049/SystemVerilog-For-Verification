// Code your testbench here
// or browse Examples
module semaphore_example();
  task write_mem();
    $display("Before writing into memory");
    #5ns;  // Assume 5ns is required to write into mem
    $display("Write completed into memory");
  endtask
  
  task read_mem();
    $display("Before reading from memory");
    #4ns;  // Assume 4ns is required to read from mem
    $display("Read completed from memory");
  endtask

  initial begin
    fork
      write_mem();
      read_mem();
    join
  end
endmodule