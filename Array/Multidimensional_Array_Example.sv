// Code your testbench here
// or browse Examples
 module multidim_arr_ex1;
  int arr1 [][$]; //dynamic array of queues  [] should be before [$]
  int arr2 [][4]; //dynamic array of fixed-size arr [] should be before [4]
  initial begin  
    arr1 = new[2];
    arr1[0].push_back(1);
    arr1[1].push_back(2);
    arr1[0].push_front(3);
    arr1[0].push_front(4);
    arr2 = new[2];
    $display("arr1 = %p, arr1.type = %s", arr1, $typename(arr1));
    $display("arr2 = %p, arr2.type = %s", arr2, $typename(arr2));
  end
 endmodule: multidim_arr_ex1