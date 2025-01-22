void main(){

  /*  ------------------ final --------------------
    A variable declared with final can only be assigned once. 
    Its value is initialized when the code is executed, at runtime.

    Use Case: 
    Use final when the value is not known until runtime but should remain constant after being initialized.
  */


    final int age = 30;
    final DateTime currentTime = DateTime.now(); // Value determined at runtime
    
    print(age);          // Output: 30
    print(currentTime);  // Output: (The current time when executed)
    
    // age = 31; // Error: 'age' can only be set once






  /*  ------------------ const --------------------
    A variable declared with const is a compile-time constant. 
    The value must be known and fixed at compile time. 

    Use Case: 
    Use const when you have values that are known at compile time and will never change.

  */

  const double pi =3.14;

  print("Value of PI is $pi");

  // pi=3.2;   we cannot change the value onced assigned




  //  final vs const 

  final DateTime currentDate = DateTime.now(); // Determined at runtime

  // const DateTime constDate = DateTime.now(); // Error: DateTime.now() isn't a constant
  
  const double gravity = 9.8; // Compile-time constant
  
  print('Current Date: $currentDate');
  print('Gravity: $gravity');




  final arr=[1,2,3,4,5];
  arr.add(9);   // this is allowed as we are updating the value in arr
  // arr=[6,7,8];  // this is not allowed as we try to change the array


  // we cannot modify array if we make it const at compile time
  
  // final testarr=  const [1,2,3,4,5];
  // testarr.add(9);   // it wont give the error at compile time but at runtime
  // // arr=[6,7,8];  // this is not allowed as we try to change the array


  const carr=[1,2,3];
  // // carr.add(9);   it gives me the error at /runtime/ "cannot add ele to an unmodified list"

  print(carr);
}