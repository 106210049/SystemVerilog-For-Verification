class transaction;
  bit [31:0] data;
  local int id;

  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
   
    tr.data = 100;
    tr.id = 1;
    
    tr.display();
  end
endmodule

