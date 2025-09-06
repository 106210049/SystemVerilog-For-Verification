// Code your testbench here
// or browse Examples
class transaction;
  static int s_id;
  
  static function void incr_s_id(); // Static function
    s_id++;
  endfunction
  
endclass

module class_example;
  transaction tr;
  initial begin
    transaction::incr_s_id(); // Access static function without class handle
    tr.incr_s_id(); // Access static function with class handle
    $display("After incr_id function call");
    $display("Value of s_id = %0h using tr handle", tr.s_id);
    $display("Value of s_id = %0h using scope resolution operator", transaction::s_id);
  end
endmodule