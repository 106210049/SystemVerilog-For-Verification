// Code your testbench here
// or browse Examples
// Dynamic Array of Associative Arrays: Create a farm with multiple zones, 
// each zone will consist of animals and their quantities stored in associative arrays. 
// The zones in the farm are managed within a dynamic array.
 module multidim_arr_ex2;
 int animal_farm[][string]; // int type to store the quantity of animals
 string a;
 
 initial begin
   animal_farm = new[3]; // farm have 3 zone
   animal_farm[0] = '{"pig": 1, "cat":2, "dog":3, "cow":4};
   animal_farm[1] = '{"sheep":5, "wolf":6, "chick":7, "horse":8};
   animal_farm[2] = '{"bird":9, "fish":10, "crab":11, "bear":12};
   $display("animal farm zone 1: %p", animal_farm[0]);
   $display("animal farm zone 2: %p", animal_farm[1]);
   $display("animal farm zone 3: %p", animal_farm[2]);
   $display("animal_farm = %p, type = %s, size =", animal_farm, $typename(animal_farm),animal_farm.size());
   
   $display("===========================");
   if (animal_farm[0].exists("dog"))
     $display("Found %0d dogs !", animal_farm[0]["dog"]);
   else 
     $display("There are no item name dog !!!");
   
   $display("===========================");
   
   if (animal_farm[1].first(a))
     $display("animal_farm[%s] = %0d is the first item!", a, animal_farm[1][a]);
   
 end
 endmodule: multidim_arr_ex2
