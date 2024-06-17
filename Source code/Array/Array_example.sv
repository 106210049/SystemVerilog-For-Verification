////-----------fixed size array-single dimensional array----------------

module fixed_single_example;
  int array[5] = {100,200, 300, 400,500}; // số phần tử phải bằng kích thước của Array
// int array[5];
 
  initial begin
    $display("array[4] = %0d",array[4]);	// print 500
    foreach (array[i]) begin	// Vòng lặp foreach
      $display("array[%0d] = %0d", i, array[i]);	// print 100 200 300 400 5000

    end
  end
endmodule

 ////--------------fixed size array-multi dimensional array-----------------

module fixed_multi_example;

//   int array[6][2] = '{'{1, 100}, '{2, 200}, '{3, 300}, '{4,400}, '{5, 500}, '{6, 600}};	// vì bên trong unpackage array là package array vì vậy phải có ' để đồng bộ 

bit [5:0] array[4:0][1:0];
initial
  begin
    
    array='{'{6'b001000,6'b100000},'{'h4,'h5},'{'h6,'h2},'{'h3,'h4},'{'h5,'h6}};
    foreach (array[i,j]) 
      begin
      $display("array[%0d][%0d] = %0d", i,j, array[i][j]);
      end
  end
endmodule

////-------------------Packed array---------------------------

module packed_array_example;
//  bit [2:0][3:0] array = {4'h2, 4'h4, 4'h6};
  bit [2:0][3:0] array = {12'h5ff};
 
  initial begin
    $display("=====Binary=====");
    $display("array = %12b",array);
    foreach (array[i,j]) begin 
      $display("array[%0h][%0h] = %0h", i,j, array[i][j]);
    end
  end
  
  initial begin
    $display("=====Hexa=====");
    $display("array = %12h",array);
    foreach (array[i]) begin 
      $display("array[%0h] = %0h", i, array[i]);
    end
  end
  
endmodule

// ////-----------------------Unpacked array---------------------

module unpacked_array_example;
  int array [3][4] = '{'{1, 2, 3, 4},
                      '{5, 6, 7, 8},
                      '{9, 10, 11, 12}
                      };
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule

////-----------------Combination of a packed and unpacked array-----------

module array_example;
// bit [4:0] array[2:0][1:0] = '{'{5'h5, 5'h1},
//                               '{5'h10, 5'h2},
//                               '{5'h15, 5'h3}
//                                };
    initial begin	
  bit [0:1][0:1] array[0:2][0:1] = '{{20,1},
                                     {10, 12},
                                     {15,2}
                                    };	// Khi chèn số 20> 4 bit thì sẽ xảy ra truncated ( bị cắt bit có trọng số lớn nhất) 20: 10100 --> 0100(4)
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule

//----------------Dynamic array---------------------------------

module dynamic_array_example;
  int array [];
  int index;
  initial begin
    array = new[5];
    array = {5, 10, 15, 20, 25};
    
    // Print elements of an array

//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    
    // size of an array
    $display("size of array = %0d", array.size());

    // Resizing of an array and copy old array content
    array = new[8] (array);
    $display("size of array after resizing = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    // Override existing array: Previous array elememt values will be lost
    array = new[6];
    $display("size of array after overriding = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("array = {%0p}", array);
    array.delete();
    $display("size of array after deleting = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);	
    $display("array = {%0p}", array);

  end
endmodule

//--------------------------Associative array------------------------------

module associative_array_example;
   bit [7:0] array [int];
   int index;
  
  initial begin
    // initialize value to array
    array[5] = 2;
    array[10] = 4;
    array[7] = 6;
    array[9] = 8;
    array[20] = 10;
    array[13] = 12;
    array[14] = 22;
    $display("array = {%0p}", array);
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // Print array size and number of entries
    $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
    $display("--------------------------");
    
    // exists method
    if(array.exists(7)) $display("An element exists at index = 7");
    else $display("An element doesn't exists at index = 7");
    
    if(array.exists(8)) $display("An element exists at index = 8");
    else $display("An element doesn't exists at index = 8");
    $display("--------------------------");
    
    // first, last, prev, next method
    array.first(index);	// we get first index of array
    $display("First index of array = %0d", index);
    
    array.last(index);	// we get last index of array
    $display("Last index of array = %0d", index);
    
    index = 9;
    array.prev(index);  // Previous index of 9
    $display("Prev index of 9 is %0d", index);
    
    index = 10;
    array.next(index); // Next index of 10
    $display("Next index of 10 is %0d", index);
    //     Delete particular value (12)
    foreach (array[i])	begin	if(array[i]==12)	begin index=i;  end	end	// we get index of element which have value is 12
    
    array.delete(index); // delete element which have value 12 at index
    $display("After deleting element having value 12");
    $display("Index of value 12 and need to delete is: %0d",index);
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("--------------------------");
    // Delete particular index
    array.delete(7); // we delete array which index=7
    
    // Print array elements
    $display("After deleting element having index 7");
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("--------------------------");
    
    // Delete complete array
    array.delete();	// delete all elements in array
    $display("size = %0d of array", array.size());
  end
endmodule
//---------------------------------------------------

