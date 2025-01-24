void main() {
  int number = 10;
  if (number > 5) {
    print('Number is greater than 5');
  }

  if (number > 7) {
    print("Number is greateer than 7");
  } else {
    print("Number is less than 7");
  }
  number = 5;
  if (number > 5) {
    print("Number is greast than 5");
  } else if (number < 5) {
    print("number is less than 5");
  } else {
    print("Number is equal to 5");
  }

  String fruit = 'apple';
  switch(fruit){
    case 'appl':
      print("Apple");
    case('banana'):
    print("Banana");
    default :
    print("Other ..");
  }
}
