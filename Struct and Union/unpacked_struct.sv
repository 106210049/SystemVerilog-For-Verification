// Code your testbench here
// or browse Examples
module struct_example;
  typedef struct {
    string name;
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp1, emp2;
    emp1.name = "Alex";
    emp1.salary = 'h10000;
    emp1.id     = 'd1234;
    $display("EMP 1: %p", emp1);
    
    emp2.name = "John";
    emp2.salary = 'h12000;
    emp2.id     = 'd4321;
    $display("EMP 2: %p", emp2);
  end
endmodule