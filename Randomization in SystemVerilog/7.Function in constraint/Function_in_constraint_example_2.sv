
// ----------------------
// LỚP CHA: chứa function logic
// ----------------------
class parent;
  rand bit [5:0] value;
  rand bit sel;

  // Hàm này nằm trong lớp cha, dùng để xác định giá trị tùy theo sel
  function bit [5:0] get_values(bit sel);
    return (sel ? 'h10 : 'h20);
  endfunction
endclass

// ----------------------
// LỚP CON: kế thừa parent và thêm constraint
// ----------------------
class child extends parent;
  // Constraint ở lớp con, sử dụng hàm ở lớp cha
  constraint value_c { value == get_values(sel); }
endclass

module constraint_example;
  child item;
  
  initial begin
    item = new();

    repeat(5) begin
      if (!item.randomize())
        $display("Randomization failed!");
      else
        $display("sel = %0b --> value = %0h", item.sel, item.value);
    end

    // Gọi trực tiếp hàm từ lớp cha
    $display("Function call test: get_values(1) = %0h", item.get_values(1));
    $display("Function call test: get_values(0) = %0h", item.get_values(0));
  end
endmodule
