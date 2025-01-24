void main() {

  /* -------------------- var ----------------------------
      // The type is determined at compile time based on the assigned value and cannot change later, 
      //ensuring type safety.
  */

    var currtime = DateTime.now();
    print("Current Time :- $currtime");  







    /**  ----------------------- Object --------------------
     * Variables declared as Object can hold any type, but they are subject to type checks at compile-time.
     * It is similar to dynamic except null safety means we can change its type
     */

              Object obj = 'Hello';
          print(obj);  // Works

          obj =12;
          print("Objjj $obj");


// obj.length; // Error: The getter 'length' isn't defined for the class 'Object'. (compile time)







 

  /* ---------------------- dynamic ------------------
    The type is flexible and can change at runtime, but it lacks type safety,
   */

  dynamic ti = DateTime.now();
  print("Time : $ti");

















// ---------------- Difference ---------------- 

  Object tii = DateTime.now();
  print("Time time : $ti");
  ti.length();


  var fixedType = "Dart"; // Inferred as String
  dynamic flexibleType = "Programming"; // Initially String

  print(fixedType); // Output: Dart
  print(flexibleType); // Output: Programming

  // print(flexibleType.length());   /// it gives a runtime error int class has no method error

  // fixedType = 123; // Error: Can't assign 'int' to 'String'
  flexibleType = 123; // No error
  print(flexibleType); // Output: 123
}
