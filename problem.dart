import 'dart:io';

void main() {
  var item = {
    "c": true,
    "d": true,
    "a": false,
    "b": false,
    "e": false,
    "f": false,
    "g": false,
    "h": false,
    "i": false,
    "j": false,
  };


  void sortItems() {
    var sortedKeys = item.keys.toList();
    sortedKeys..sort((key1, key2) {    // .. cascade operator to modify the list in place
        if (key1 == 'c' || key1 == 'd') return -1;
        if (key2 == 'c' || key2 == 'd') return 1;
        if (item[key1] == true && item[key2] == false) return -1;
        if (item[key1] == false && item[key2] == true) return 1;
        return 0;
      });
    item = {for (var key in sortedKeys) key: item[key]!};
  }

  

  while (true) {
    sortItems();
    item.forEach((key, value) {
      print("$key: ${value ? 'true' : 'false'}");
    });

    stdout.write("\nEnter the item to toggle (or 'exit' to quit): ");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == "exit") {
      print("Bye ");
      break;
    }

    if (item.containsKey(input)) {
      if (input == 'c' || input == 'd') {
        print("Cannot tggle items (c, d).");
      } else {
        item[input] = !item[input]!;
        print("Updated $input to ${item[input]}.");
      }
    } else {
      print("Invalid item.");
    }
  }
}



    