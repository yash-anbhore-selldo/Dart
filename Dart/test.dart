// // // // late String description;

// // // // void main() {
// // // //   description ="s";
// // // //   print(description);
// // // // }


// import 'dart:io';

// void main(){
//   String? x = stdin.readLineSync();
//   String? ans ;
//   if(x!=null){
//   ans = x[0].toUpperCase() +x.substring(1);
//   }
//   print("x=$ans.");


//   var gifts = {'first': 'partridge'};
//   print(gifts);

// }

// // // void main(){
// // //   final x=10;
// // // }

// // void main(){

// // var x =null;
// // print(x);

// // // int y =null; not possible 
// // }




// late String name;

// void initializeName() {
//   name = 'John Doe';
// }

// void main() {
//   initializeName();
//   print(name); // This will print 'John Doe' after the initialization.


//   Set s = {1,2,3};
//   print(s.first);


//   /**
//    * This works because LinkedHashSet preserves the insertion order. 
//    * If Dart were to change the default implementation 
//    * to a different Set implementation (e.g., a hash-based set that doesn't preserve insertion order), the result of s.first could be different.
//    */
// }

/**
 * If your numbers have more than 15–17 significant digits, 
 * Dart's double type will round or truncate them. 
 */


// if 7 digits it wont trim the decimal value
// if 13 digits it will round up the value
// if 13 digit and after  . 4 digits it will round  up
void main(){
  var arr1 = [8, 100.01, 12345678901234.102007, 1234567890123.0009];
  // print(Decimal.parse(arr1));
  print(arr1);

  print(BigInt.parse('arr1'));

}