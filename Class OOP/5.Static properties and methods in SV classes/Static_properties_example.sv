// Code your testbench here
// or browse Examples
class transaction;
  static int s_id;
  int id;
  
  function new ();
    s_id++;
    id++;
  endfunction
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      $display("Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
  end
endmodule