// Code your testbench here
// or browse Examples
module struct_example;
  typedef struct {
    string name;
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee e1, e2;
    e1.name = "Alex";
    e1.salary = 'h10000;
    e1.id     = 'd1234;
    $display("employee e1: %p", e1);
    
    e2.name = "Bob";
    e2.salary = 'h20000;
    e2.id     = 'd4321;
    $display("employee e2: %p", e2);
    $display("-------------------------------------------------");
    
    // Accessing individual struct member
    $display("employee e1: name = %s, salary = 0x%0h, id = %0d", e1.name, e1.salary, e1.id);
    $display("employee e2: name = %s, salary = 0x%0h, id = %0d", e2.name, e2.salary, e2.id);
  end
endmodule