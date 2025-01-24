void main() {
  // loop control structure

  //for
  for (int i = 0; i < 10; i++) {
    print(" Hello $i");
  }

  //for in
  List<String> fruits = ["Apple", "Banana", "Mango"];
  for (var x in fruits) {
    print("Fruit :-  $x");
  }

  print("Do while");

  int i = 0;
  do {
    print(fruits[i]);
    i++;
  } while (i < fruits.length);
}
