// Code your testbench here
// or browse Examples
module event_example();  
  function process_A(event e1);
    ->e1;
    $display("@%0t: process_A: e1 is triggered", $time);
  endfunction
  
  initial begin
    event e1;
    fork
      process_A(e1);
      begin
        $display("@%0t: process_B: waiting for the event e1", $time);
        wait(e1.triggered);
        $display("@%0t: process_B: event e1 is received", $time);
      end
    join
  end
endmodule