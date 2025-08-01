//-------------------------basic methods---------------------------
module string_basic_methods;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    $display("s1=%0d",s1.len());
    s1.putc(2,"char");
    $display("s1=%0s",s1);
    // s1.putc(2,"char")               //s1=Hiceveryone

    $display("s1=%0s=%0d", s1.getc(2), s1.getc(2));
    
    s1="ENGINEERING";
    $display("s1=%0s",s1.tolower());
    $display("s1=%0s",s1.toupper());
    
   // s2="ENGINEERING";
    s2="EZgineering";//A=65 a=97
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.compare(s2));
    //(s1-s2)case sensitive(0=equ,neg=s1<s2,pos=s1>s2)
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.icompare(s2)); //case insensitive
  end
endmodule

//-----------------------------------------
// module strings_ex2();

// string name = "Amar";
// string cname;
// string comp;
// int i;
// initial begin
//     $display("Length of the string is %0d", name.len());
//     name.putc(3,"n");
//   $display("name.putc(3,n): %0s",name);
//     $display("name.getc(3): %0s",name.getc(3));
//   $display("name.substr(1,3): %s",name.substr(1,3));
//     $display("to uppercase: %0s",name.toupper());
//     $display("to lowercase: %0s",name.tolower());
//     comp="Amar";name="Amar";
//     cname=name.compare(comp)?"Unequal":"Equal";
//     i=name.compare(comp);
//   $display("Cname=%0s i=%0d",cname,i);
// end
// endmodule