void main(){
  // Temperature : Farenheit to celcius

  double far = 86;

  double ans = (far-32)/1.8;

  print("Todays temp is $far farenheit , ${ans.toStringAsFixed(2)} degreee celcius"); // 30.00


  int x = 1;    // 1
  int y = x++;  // y = 1 , x = 2
  int z = --y; // z = 0 , y = 0 
  print('x: $x, y: $y, z: $z');  // 2 , 0 , 0 

}