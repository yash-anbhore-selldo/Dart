
// use Case :- 
//  Declaring a non-nullable variable that's initialized after its declaration.
// Lazily initializing a variable

late String description;
void main() {
  description = 'Feijoada!';
  var x;
  print(x);

  
  print(description);




  var person = Person();
  person.setName("Alice");  // Initialize 'name' later
  print(person.name);  // Prints: Alice

  switch(1){
    case 1:
      print("Monday");
      break;
    default :

  }



 
}





class Person {
  late String name;  // Declared, but not immediately initialized if i dont use late it will give me an error

  // Constructor doesn't need to initialize 'name'
  Person();
  
  // Method to initialize 'name' later
  void setName(String newName) {
    name = newName;
  }
}
