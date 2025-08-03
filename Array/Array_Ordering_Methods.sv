// Code your testbench here
// or browse Examples
module arr_manipulation_ex5;
  string s[] = { "hello", "sad", "world" };
  initial begin
    s.reverse; // s becomes { "world", "sad", "hello" };
    $display("s = %p", s);
    $display("====================");
  end
  int q[$] = { 4, 5, 3, 1 };
  initial begin
    q.sort; // q becomes { 1, 3, 4, 5 }
    $display("q = %p", q);
    $display("====================");
  end
  typedef struct { byte red, green, blue; } color_t;
  color_t c[10]; // dùng 10 phần tử cho dễ quan sát

  initial begin
    // Gán giá trị ngẫu nhiên cho từng phần tử
    foreach (c[i]) begin
      c[i].red   = $urandom_range(0, 255);
      c[i].green = $urandom_range(0, 255);
      c[i].blue  = $urandom_range(0, 255);
    end

    $display("Before sort:");
    foreach (c[i]) $display("c[%0d] = {red:%0d, green:%0d, blue:%0d}", i, c[i].red, c[i].green, c[i].blue);

    $display("====================");

    c.sort with (item.red);

    $display("After sort by red:");
    foreach (c[i]) $display("c[%0d] = {red:%0d, green:%0d, blue:%0d}", i, c[i].red, c[i].green, c[i].blue);

    $display("====================");

  end
 endmodule: arr_manipulation_ex5
