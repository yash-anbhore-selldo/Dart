void main(){

 
  print("Hello World\n\n");

  // --------------------------------< Data types  >--------------------------//

    // By default values are non-nullable
    // We use ? to make it nullable 


    //----------------Number - int , double , num -----------------------

      /*
          int 
          Integer values range from ->  -2 raise to 63 to 2 raise to 63 -1
          Double 64-bit 
          Num  -> It can hold both values (int and double)  {(Abstract Superclass)}
      */

      int age = 30;
      double salary = 8000000.0;
      num x = salary/age;

      print("Age is $age\nSalary is $salary \nX = $x");





    //-----------------String--------------------------
    /*
      Strings in Dart are immutable, 
      meaning once a string is created, it cannot be modified. 
    //   When you modify a string, a new string is created.
    // */

          String singleQuote = 'Hello, Dart!';
          String doubleQuote = "Hello, Dart!";
          String multilineString = '''Hello,
          World!''';

          print("Single Quotes = $singleQuote \nDouble Quote = $doubleQuote \nMultiLine = $multilineString");
    
    
    
    // //------------------Boolean--------------------------

    bool istrue = false;
    print("State = $istrue");



    //------------------List-----------------------------
    /*
      A List in Dart is an ordered collection of objects. 
      It allows duplicates and the order of elements is maintained.
      A List can be accessed using an index.
    */
        List<int> numbers = [1, 2, 3, 4];    // now it can only store the int type 
        List<String> names = ['Alice', 'Bob', 'Charlie'];

        print("Name = $names  \nNumber = $numbers");


        List arr  =[1,3,"e"];  // now it can store both int and str
        print("Array :- \n $arr");

        




    //------------------Set-----------------------------
    /*
      A Set in Dart is an unordered(or ordered) collection of unique objects. 
      Sets do not allow duplicate values, 
    */
        Set<String> colors = {'Red', 'Green', 'Blue'};
        // Adding an element
        colors.add('Yellow');
        
        print(colors); // {Red, Green, Blue, Yellow}



    //------------------Map-----------------------------
    /*
      A Map in Dart is a collection of key-value pairs. 
      It stores unique keys, and each key maps to a specific value. 
      You can think of a Map as a dictionary or hash table.
    */

        Map<String, int> agemp = {
        'Alice': 30,
        'Bob': 25,
        'Charlie': 35,
      };
      print ("Age = $agemp");

      

}