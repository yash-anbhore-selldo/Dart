import 'dart:io';

void main(){
  print("Enter First name");
  String? name = stdin.readLineSync();
  print("Enter last name");
  String? lastname = stdin.readLineSync();
  print("Enter age name");
  int? age = int.parse(stdin.readLineSync()?? "1");   // null operator if left exp is null right will exexute
  print("Enter height name");
  int? height = int.tryParse(stdin.readLineSync()?? '2');


  print("Hello ${name!.trim()} ${lastname!.trim()}, you are $age old , you are $height feet tall");

}