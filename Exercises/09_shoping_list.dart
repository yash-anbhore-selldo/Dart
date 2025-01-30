// Shopping list Exercise

// Flow --------
// 1. List of items
// 2. Add to cart - if added still did not remove from the list just show the user how much is remaining
// 3. Buy item - if bought then remove the item from list

// login
// or menu drive program

// Money logic
// minus logic   comp
// + logic        half comp
// return values

import 'dart:io';

void main() {
  Map<num, Map<String, dynamic>> fruitsbucket = {
    1: {"name": "Banana", "Quantity in Dozen": 10, "Price": 100},
    2: {"name": "Apple", "Quantity in Dozen": 10, "Price": 200},
    3: {"name": "Kiwi", "Quantity in Dozen": 10, "Price": 100},
    4: {"name": "Orange", "Quantity in Dozen": 10, "Price": 400},
    5: {"name": "Melon", "Quantity in Dozen": 10, "Price": 300},
    6: {"name": "Grapes", "Quantity in Dozen": 10, "Price": 100},
    7: {"name": "Gauva", "Quantity in Dozen": 10, "Price": 200},
  };

 
  num remainingAmount=0;
  fruitsbucket.forEach((xabs,yabs)=>
      remainingAmount += yabs["Price"] 
  );
  print("$remainingAmount");


  // print(fruitsbucket);

  Map<num, Map<String, dynamic>> addtocartlist = {};

  void showBucket() {
    print("--------------- Fruit Basket ------------");
    print("\n\tFruit_Name \t Quantity\tPrice");
    fruitsbucket.forEach((x, y) => print("\t$x\t\t$y"));
    print("---------------------------\n");
  }

  void showCart() {
    print("--------------- Fruit Cart -------------------");
    if (addtocartlist.isEmpty) {
      print("\t--------Bucket is Empty--------");
      return;
    }
    print("\n\tFruit_Name \t Quantity");
    addtocartlist.forEach((x, y) => print("\t$x\t\t$y"));
    print("--------------------------------------------------\n");
  }

  bool checkitemexist(item) {
    if (!fruitsbucket.containsKey(item)) {
      print("Enter Valid Fruit");
      return false;
    }
    return true;
  }

  bool itemAlreadyInCart(var item, var itemval) {
    if (addtocartlist.containsKey(item) && addtocartlist[item]! >= itemval) {
      itemval = itemval * -1;
      addtocartlist[item] = addtocartlist[item]! - itemval;
      fruitsbucket[item] = fruitsbucket[item]! - itemval;
      return false;
    }
    return true;
  }

  bool checkitemremain(item, itemval) {
    if (!checkitemexist(item)) return false;
    num? count = fruitsbucket[item];
    if (count != null && count - itemval < 0) {
      print("Only $count $item is remaning please enter valid quantity");
      return false;
    }
    return true;
  }

  void addtocart(var item, var itemval) {
    if (!checkitemexist(item)) return;
    if (!checkitemremain(item, itemval)) return;
    if (!itemAlreadyInCart(item, itemval)) return;

    if (itemval > 0) {
      addtocartlist[item] = itemval;
      fruitsbucket[item] = fruitsbucket[item]! - itemval;
      print("$item Successfully Added \n\n");
    }
  }

  void BuyfromCart() {}

  void addtocarmess() {
    print("Which fruit you need to add");
    var item = stdin.readLineSync();
    item = item!.trim();
    print("Enter Quantity");
    var val = stdin.readLineSync();
    var itemval = int.tryParse(val!);

    addtocart(item, itemval!);
  }

  var x;

  do {
    print("_______Shopping List___________");
    print("Type - 1 => Add item to cart");
    print("Type - 2 => Show Fruits Bucket");
    print("Type - 3 => Show Cart ");

    print("Type Exit for exit");
    x = stdin.readLineSync();
    if (x.toLowerCase == "exit") return;

    switch (x) {
      case "1":
        showBucket();
        showCart();
        addtocarmess();
      case "2":
        showBucket();
      case "3":
        showCart();
    }
  } while (x.toLowerCase() != "exit");
}
