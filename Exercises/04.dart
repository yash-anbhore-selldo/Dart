import 'dart:io';


void main(){

// Different between parse and tryparse 


// parse will return exception if it fails to convert the value into int or double
  // int x = int.parse("abs");  // it throws and exception  , we already knows that it cant be null so ? no need


// parse will return null if it fails t o convert the value into int or double
  int? y = int.tryParse("abs");   // it return null 

  print(y);
  
  
  print("Enter the temperature");
  double temp = double.tryParse(stdin.readLineSync() ?? "2") ?? 2.2;

  print("Enter the number");
  int num = int.parse(stdin.readLineSync() ?? '5'); 
  print("Enter what do you like");
  String? likes = stdin.readLineSync();
  List<String> item=[];

  if(likes!=null){
    item = likes.split(RegExp(r'\s+and\s+|\s+'));

    item = item.map((items) => items.trim()).toList();  // .toList as it returns iterable to we ned string
  }

  String items = item.join(", ");

  print("Todays temp is ${temp}C \n addition of $num is ${num+num} , You like $items ");


    int a = 10;
  print('$a');  // 10
  print('\$a');  // \10
  print('\$$a'); // \$10


}