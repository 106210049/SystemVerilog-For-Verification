// Code your testbench here
// or browse Examples
class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends transaction;
  bit [31:0] addr;
  
  task calc_addr;
    addr = data * id;
    display();  // child class is accessing local method of parent class
    $display("addr = %0d", addr);
  endtask
endclass

module class_example;
  child_trans tr;
  
  initial begin
    tr = new();
    tr.calc_addr();
  end
endmodule