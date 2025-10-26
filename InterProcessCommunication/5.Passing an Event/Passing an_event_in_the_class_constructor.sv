// Code your testbench here
// or browse Examples
class transaction;
  event tr_e;
  
  function new(event e1);
    tr_e = e1;
  endfunction
  
  task process_A();
    #10;
    ->tr_e;
    $display("@%0t: process_A: tr_e is triggered", $time);
  endtask

  task process_B();
    $display("@%0t: process_B: waiting for the event tr_e", $time);
    wait(tr_e.triggered);
    $display("@%0t: process_B: event tr_e is received", $time);
  endtask
endclass

module event_example();
  transaction tr;
  event ev;
  
  initial begin
    tr = new(ev);
    fork
      tr.process_A();
      tr.process_B();
    join
  end
endmodule