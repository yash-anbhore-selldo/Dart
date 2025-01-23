void main() {

  /* -------------------- var ----------------------------
      // The type is determined at compile time based on the assigned value and cannot change later, 
      //ensuring type safety.
  */

    var currtime = DateTime.now();
    print("Current Time :- $currtime");

  /* ---------------------- dynamic
    The type is flexible and can change at runtime, but it lacks type safety,
   */


  var fixedType = "Dart"; // Inferred as String
  dynamic flexibleType = "Programming"; // Initially String

  print(fixedType); // Output: Dart
  print(flexibleType); // Output: Programming

  // fixedType = 123; // Error: Can't assign 'int' to 'String'
  flexibleType = 123; // No error
  print(flexibleType); // Output: 123
}
