module union_example;
  typedef union packed {
    bit [31:0] salary; // 32-bit
    int        id;     // int là 32-bit
  } employee;
    
  initial begin
    employee emp;
    emp.salary = 'h800;
    $display("salary updated for EMP: %p", emp);
    emp.id     = 'd1234;
    $display("ID updated for EMP: %p", emp); //Note: Salary information will be lost
  end
endmodule
