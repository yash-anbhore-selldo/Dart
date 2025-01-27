// List 

void main(){
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  a=a.where((n)=>n>5).toList();
  print(a);

  a = a.map((x)=>x*2).toList();
  print(a);

  a= a.map((x)=>x~/2).toList();
  print("Previous : $a");

  var ans = a.reduce((x,y)=>x+y );
  print(ans);

}