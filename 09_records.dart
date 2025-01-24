


import 'dart:collection';

/**                    ----- Records(similar to tuples in python) ----------
  *
  * Immutability: Records are immutable. 
  * Positional and Named Fields: It can hav positional fields (accessed by their position) or named fields (accessed by their field names).
  * Heterogeneous Data Types

 */

void main(){

// / Record type annotation in a variable declaration:
(String, int) record;

// Initialize it with a record expression:
  record = ('A string', 123);



  var per = (1,2,3,4,5,'6');
  print(per.runtimeType);

  // Positional Record
  print(per.$1);   // $1 is a way to print(1) record like $2,$3 etc

  print(per.$6);   // $1 is a way to print('6') record like $2,$3 etc

  var person = (name: 'Yash', age: 22);
  print(person.name); // Access 'name' field, prints Yash
  print(person.age);  // Access 'age' field, prints 22

  // print(person.$1);  this is not possible 

  print(per.$1);


  //destructing the record 
  var point = (5, 10);
  var (x, y) = point;

  print(x); // 5
  print(y); // 10


  // comparing the records
  var record1 = (1, 'Hello');
  var record2 = (1, 'Hello');
  print(record1 == record2); // true


}