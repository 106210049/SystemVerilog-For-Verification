module arr_manipulation_ex2;
  byte b[] = { 1, 2, 3, 4 };
  int y;
  initial begin
    y = b.sum;
    $display("Sum: %0d", y); // 1 + 2 + 3 + 4 = 10

    y = b.product;
    $display("Product: %0d", y); // 1 * 2 * 3 * 4 = 24

    y = b.xor with (item + 4);
    $display("XOR with (item+4): %0d", y); // 5 ^ 6 ^ 7 ^ 8 = 12
  end
endmodule

module arr_manipulation_ex3;
  logic [7:0] m [2][2] = '{ '{5, 10}, '{15, 20} }; 
  int y;
  initial begin
    y = m.sum with (item.sum with (item));
    $display("2D Array Sum: %0d", y); // 5 + 10 + 15 + 20 = 50
  end
endmodule

module arr_manipulation_ex4;
  logic bit_arr [1024];
  int y;
  initial begin
    // Giả sử: set vài bit để tính tổng cho rõ ràng
    bit_arr[0] = 1;
    bit_arr[1] = 1;
    bit_arr[100] = 1;
    bit_arr[500] = 1;

    y = bit_arr.sum with (int'(item));
    $display("Bit Array Sum: %0d", y); // Should print 4
  end
endmodule


