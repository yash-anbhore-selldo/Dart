// // late String description;

// // void main() {
// //   description ="s";
// //   print(description);
// // }


import 'dart:io';

void main(){
  String? x = stdin.readLineSync();
  String? ans ;
  if(x!=null){
  ans = x[0].toUpperCase() +x.substring(1);
  }
  print("x=$ans.");


  var gifts = {'first': 'partridge'};
  print(gifts);

}

// void main(){
//   final x=10;
// }