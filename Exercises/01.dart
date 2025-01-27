//Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.


import 'dart:io';

void main(){
  print("Enter your age");
  dynamic age = stdin.readLineSync();
  age = int.parse(age);


  print(" It take ${100-age}year to be of 100 years");


}