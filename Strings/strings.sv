module string_data_type;
  
  reg [0:15*8-1]s;
  string s0;
  bit[31:0]b;
  string s1;
  
  initial begin
    s = "how are you doing";//17chars
    $display("String s = %0s",s);
    s1="I'm Long";
    s = "Hello World";//11chars
    $display("String s = %0s",s);
    
  //s0-> empty string
    $display("String s0 = %0s",s0);

    s0 = "Hello World ssssss";//11chars 
    $display("String s0 = %0s",s0);
  
    s0 = string'({"Hi, "," ",s});
//     s0={"Hi, "," ",s};	// Assigning an expression of an integral type to a string requires a cast operation
    $display("String s0 = %0s",s0);
  	
    s1="I'm Long";
    s0={s,", ",s1,", I'm 21 years old"};
    $display("String s0 = %0s",s0);
    
    b = 128;
//     s0=b;	// illegal
//     s0 = string'(b); // sets 128 to s0
//     $display("s0 = %0s \n bit b = %0d",s0,b);
//     $sformat(s0, "%s", b);
//     $display("s0 = %0s \n bit b = %0d",s0,b);
    s0.itoa(b);
    $display("s0 = %0s \n bit b = %0d",s0,b);
    
    s0="welcome to We_LSI channel,practice at the end of the session \
All the best";
    $display("s0 = %0s",s0);

  end
endmodule
//-------------------------------------------------------
module string_operator;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
//     if(s1==s2)
//          $display("s1=%0s equals to s2=%0s",s1,s2);
//     else $display("s1 is not equals to s2");

//     if(s1<s2)//<=,>,>=
//          $display("s1=%0s is less than s2=%0s",s1,s2);
//     else 
//          $display("s1 is not less than s2");
    if(s1==s2)	begin
      $display("s1=%0s equals to s2=%0s",s1,s2);
    end
    else if(s1<s2)	begin
      $display("s1=%0s is less than s2=%0s",s1,s2);
    end
    else	begin
      $display("s1=%0s is greater than s2=%0s",s1,s2);
    end
    s3={s1," welcome ",s2}; 
    $display("s3=%0s",s3);
    
    s3={3{"We_LSI"}};             //{5{s1}}
    $display("s3=%0s",s3);
    s3="Hello guys";
    $display("s3=%0d s3=%0s",s3[7],s3[7]);
    end
endmodule
// //-------------------------basic methods---------------------------
module string_basic_methods;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    $display("s1=%0d",s1.len());
    s1.putc(2,"char");	// Replaces ‘i’th char in string with first char in s
    $display("s1=%0s",s1);
    // s1.putc(2,"char")               //s1=Hiceveryone

    $display("s1=%0s=%0d", s1.getc(2), s1.getc(2));
    
    s1="ENGINEERING";
    $display("s1=%0s",s1.tolower());	// Returns a string with chars in string converted to lower case. 
    $display("s1=%0s",s1.toupper());	//  Returns a string with chars in string converted to upper case. 

    
   s2="eNGINEERING";
//     s2="EZgineering";//A=65 a=97
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.compare(s2));
    //(s1-s2)case sensitive(0=equ,neg=s1<s2,pos=s1>s2)
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.icompare(s2)); //case insensitive
//     icompare: không phân biệt chữ cái viết hoa hay thường
//     compare: phân biệt hoa và thường
  end
endmodule
//----------------------------------------------------------------------
//-------------------------conversion methods------------------------------
    module tb;
  string my_string;
  int i;
 real j;
  initial
    begin
     my_string="3459ah";
      $display("string is=%0s %0d",my_string,my_string);
      i=my_string.atoi();
      $display("%0d",i);
      i=my_string.atohex();
      $display("%0h",i);
      i=my_string.atooct();
      $display("%0o",i);
      i=my_string.atobin();
      $display("%0b",i);
      j=my_string.atoreal();
      $display("j=%0f",j);
       i=65987;
      j=23.87;
      $display("string is=%0s",my_string);
      my_string.itoa( i);
      $display("%0s",my_string);
      my_string.hextoa( i);
      $display("%0s",my_string);
      my_string.octtoa( i);
      $display("%0s",my_string);
      my_string.bintoa( i);
      $display("%0s",my_string);
      my_string.realtoa( j);
      $display("%0s",my_string);
    end      
endmodule
//-----------------------------------------
module strings_ex2();

string name = "Amar";
string cname;
string comp;
int i;
initial begin
    $display("Length of the string is %0d", name.len());
    name.putc(3,"n");
  $display("name.putc(3,n): %0s",name);
    $display("name.getc(3): %0s",name.getc(3));
  $display("name.substr(1,3): %s",name.substr(1,3));
    $display("to uppercase: %0s",name.toupper());
    $display("to lowercase: %0s",name.tolower());
    comp="Amar";name="Amar";
    cname=name.compare(comp)?"Unequal":"Equal";
    i=name.compare(comp);
  $display("Cname=%0s i=%0d",cname,i);
end
endmodule
