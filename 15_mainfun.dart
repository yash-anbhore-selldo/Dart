import 'dart:io';

void main(List<String> x ){
  String xyz="";
  x.forEach((x)=> xyz+=x+" ");   // dart 15_mainfun.dart Hi I am Yash
  print("HI");
  if(xyz.isEmpty)
    exit(0);      // exit is a function which exit from program
  print(xyz);  //Hi I am YAsh
}