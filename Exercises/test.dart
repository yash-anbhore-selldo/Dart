import 'dart:io';

void main(){
  // var x = "+3";
  // var t = int.tryParse(x);

  // print(t);


//.map() is used for transforming elements and returning a new iterable, 
//but you are using it just for printing. so use for each
 
   Map<num, Map<String, dynamic>> fruitsbucket = {
    1: {"name": "Banana", "Quantity in Dozen": 10, "Price": 100},
    2: {"name": "Apple", "Quantity in Dozen": 10, "Price": 200},
    3: {"name": "Kiwi", "Quantity in Dozen": 10, "Price": 100},
    4: {"name": "Orange", "Quantity in Dozen": 10, "Price": 400},
    5: {"name": "Melon", "Quantity in Dozen": 10, "Price": 300},
    6: {"name": "Grapes", "Quantity in Dozen": 10, "Price": 100},
    7: {"name": "Gauva", "Quantity in Dozen": 10, "Price": 200},
  };


  Map<int , String> mp = {
    1:"Yash",
    2:"Yas",
    3:"Ya",
    4:"Y",
  };

  String val="Y";
  int? key;
  mp.forEach((x,y)=>{
    if(y == val)
      key=x
    });

    print(key);

  
  // fruitsbucket.values.forEach((x){
  //   print(x["Price"]);
  //   print(x["Quantity in Dozen"]);
  //   print(x["name"]);
  // });

    // String? x = stdin.readLineSync();
    // int c = int.tryParse(x ?? " ") ?? 0 ;
    // print(c);

}