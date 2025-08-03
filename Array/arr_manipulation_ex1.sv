module arr_manipulation_ex1;
  string SA[10], qs[$];
  int IA[int], qi[$];
  initial begin
    // Khởi tạo IA
    IA[0] = 1;
    IA[1] = 3;
    IA[2] = 7;
    IA[3] = 3;
    IA[4] = 9;
    IA[5] = 2;

    // Khởi tạo SA
    SA[0] = "Alice";
    SA[1] = "Bob";
    SA[2] = "Charlie";
    SA[3] = "Henry";
    SA[4] = "Zelda";
    SA[5] = "alice";
    SA[6] = "123";
    SA[7] = "Bob";
    
    $display("arr.find() method");
    qi = IA.find(x) with (x > 5); //Find all items greater than 5
    $display("IA.find(x > 5) = %p", qi);
    $display("======================");
    
    $display("arr.find_index() method");
    qi = IA.find_index with (item == 3); //Find indices of all items equal to 3
    $display("IA.find_index(item == 3) = %p", qi);
    $display("======================");
    
    $display("arr.first() method");
    qs = SA.find_first with (item == "Bob"); //Find first item equal to Bob
    $display("SA.find_first(item == \"Bob\") = %p", qs);
    $display("======================");
    
    $display("arr.find_last() method");
    qs = SA.find_last(y) with (y == "Henry"); //Find last item equal to Henry
    $display("SA.find_last(y == \"Henry\") = %p", qs);
    $display("======================");
    
    $display("arr.find_last_index() method");
    qi = SA.find_last_index(s) with (s > "Z"); //Find index of last item greater than Z
    $display("SA.find_last_index(s > \"Z\") = %p", qi);
    $display("======================");
    
    $display("arr.min() method");
    qi = IA.min; //Find smallest item
    $display("Smallest value in IA = %p", qi);
    $display("======================");
    
    $display("arr.max() method");
    qs = SA.max with (item.atoi); //Find string with largest numerical value
    $display("Largest value in SA = %0p", qs);
    $display("======================");
    
    $display("arr.unique() method");
    qs = SA.unique; //Find all unique string elements
    $display("SA.unique = %p", qs);
    $display("======================");
    
    qs = SA.unique(s) with (s.tolower); //Find all unique strings in lowercase
    $display("SA.unique with tolower = %p", qs);
  end
 endmodule: arr_manipulation_ex1
