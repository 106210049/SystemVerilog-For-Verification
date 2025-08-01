
// --------------------Structure example without typedef --------------------
// Note: Nếu struct không sử dụng typedef đồng nghĩa với việc không thể khai báo nhiều biến struct; chỉ cho phép gán
//  rồi thay đổi 1 struct thôi
// module struct_example;
//   struct {
//     string name;
//     bit[31:0] salary;
//     integer id;
//   } employee;
    
//   initial begin
//     employee.name = "Alex";
//     employee.salary = 'h10000;
//     employee.id     = 'd1234;
//     $display("---------- Struct example ----------");
//     $display("employee: %p", employee);
    
//     // Accessing individual struct member
//     $display("employee: name = %s, salary = 0x%0h, id = %0d", employee.name, employee.salary, employee.id);
//     $display("------------------------------------");
//   end
// endmodule

// --------------------Structure example with typedef --------------------

// module struct_example_with_typedef;
//   typedef struct {
//     string name;
//     bit[31:0] salary;
//     integer id;
//   } employee;
    
//   initial begin
//     employee e1, e2;
//     e1.name = "Alex";
//     e1.salary = 'h10000;
//     e1.id     = 'd1234;
//     $display("---------- Structure example with typedef ----------");
//     $display("employee e1: %p", e1);
    
//     e2.name = "Bob";
//     e2.salary = 'h20000;
//     e2.id     = 'd4321;
//     $display("-------------------------------------------------");
//     $display("employee e2: %p", e2);
//     $display("-------------------------------------------------");
    
//     // Accessing individual struct member
//     $display("employee e1: name = %s, salary = 0x%0h, id = %0d", e1.name, e1.salary, e1.id);
//     $display("employee e2: name = %s, salary = 0x%0h, id = %0d", e2.name, e2.salary, e2.id);
//     $display($size(e1));
//     $display("-------------------------------------------------");
//   end
// endmodule

// -------------------- Packed structure Example --------------------
module packed_struct_example;
  typedef struct packed {
    
    bit[31:0] salary;
    integer id;
    
//     string name;	// illegal
  } employee;
    
  initial begin
    employee emp1, emp2;
    $display("----------Packed Structure example ----------");
    emp1.salary = 'h10000;
    emp1.id     = 'd1234;
    $display("EMP 1: %p", emp1);
    
    emp2.salary = 'h12000;
    emp2.id     = 'd4321;
    $display("EMP 2: %p", emp2);
    $display("-------------------------------------------------");
  end
endmodule

// -------------------- Unpacked structure Example --------------------

module unpacked_struct_example;
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

// -------------------- Passing a structure in function or task --------------------

module struct_example;
  
  typedef struct {
    string name;
    bit[31:0] salary;
    integer id;
  } employee;
    
  function void print_struct(employee emp);
    $display("EMP: %p", emp);
  endfunction
  
  function employee create_struct(string name, bit [31:0] salary, integer id);
    employee emp;
    emp.name = name;
    emp.salary = salary;
    emp.id     = id;
    return emp;
  endfunction
  
  initial begin
    employee emp1, emp2;
    emp1 = create_struct("Alex",'h10000, 'd1234);
    emp2 = create_struct("John",'h12000, 'd4321);
    print_struct(emp1);
    print_struct(emp2);
  end
endmodule

// -------------------- Union Example --------------------

module union_example;
  typedef union {
    bit[15:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp;
    emp.salary = 'h800;
    $display("salary updated for EMP: %p", emp);
    emp.id     = 'd1234;
    $display("ID updated for EMP: %p", emp); //Note: Salary information will be lost
  end
endmodule