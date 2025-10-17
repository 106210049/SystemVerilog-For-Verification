virtual class parent_trans;
  bit [31:0] data;
  int id;
  
   function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    p_tr = new();
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule