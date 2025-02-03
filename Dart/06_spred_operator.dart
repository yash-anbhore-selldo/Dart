void main(){
  // ... spread operator is used to insert multiple item

  var list = [7,8,9];
  var list0 = [...list,1,2,4,5];

  //alternative way 
  list.addAll(list0);


  print(list);


  print(list0);


  // ...?  null saftey with spread operator

  List <int?> list2 = [null,21,22];

  var lit3=[...?list2,0];

  print(lit3);



  
}