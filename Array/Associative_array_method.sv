// Code your testbench here
// or browse Examples
 module assocarr_ex2;
  int animal_farm [string];
  string i;
  initial begin
     animal_farm = '{"pig": 5, "dog": 2, "sheep": 10, 
            "horse": 8, "duck": 20, "cow": 1}; //constructor animal_farm
  
    //size() or num(): print out the num of items in the array
    $display("animal_farm.size() = ", animal_farm.size());
    $display("animal_farm.num() = ", animal_farm.num());
    foreach (animal_farm[i]) $display("animal_farm[%s] = %0d", i, animal_farm[i]);
  	
    $display("====================");
    //exists(): check if a particular key exists in the array
    if (!animal_farm.exists("human"))
      $display("Humman are not in the animal farm!");
    if (animal_farm.exists("duck"))
      $display("Found %0d ducks!", animal_farm["duck"]);

  	$display("====================");
    //first(a): assign the first item to the argument a and return 1
        //if the array isn't empty, otherwise return 0
  //last(a): assign the last item to the argument a and return 1 if the array
        //isn't empty, otherwise return 0 - analogous to first(a)
    begin 
      string a;
      if (animal_farm.first(a))
        $display("animal_farm[%s] = %0d is the first item!", a, animal_farm[a]);
        
    end
  
    //prev(a): assign the index of the previous item to a, return 1. If the previous item exists, otherwise keep a and return 0
    $display("====================");
    begin
      string a = "sheep";
      if (animal_farm.prev(a))
        $display("animal_farm[%s] = %0d is the previous animal of the sheep!", a, animal_farm[a]);
      else
        $display("There is no preivous animal of sheep!");
    end
    
    // delete: Delete the element with index = idx; if there is no index = idx, delete the entire array.

    begin
      $display("====================");
      animal_farm.delete("dog");
      $display("Array after delete item is:");
      foreach (animal_farm[i]) $display("animal_farm[%s] = %0d", i, animal_farm[i]);
    end
    
  end
 endmodule: assocarr_ex2
