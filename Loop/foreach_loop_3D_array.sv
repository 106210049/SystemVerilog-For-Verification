// Code your testbench here
// or browse Examples
module foreach_example;
  int array[3][3][3] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},
                         '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}},
                         '{'{7, 70, 700}, '{8, 80, 800}, '{9, 90, 900}}
                        };
  initial begin
    foreach (array[i,j, k]) begin
      $display("array[%0d][%0d][%0d] = %0d", i,j, k, array[i][j][k]);
    end
  end
endmodule