void main(){

  const text = 'I like pizza';
  const topping = 'with tomatoes';
  const  favourite = '$text $topping';
  String newText = favourite.replaceAll('pizza', 'pasta');
  // ignore: unused_local_variable
  const nfavourite = 'Now I like curry';
  print(newText);


  // ignore: unused_local_variable
  var x = true;

  switch(true){
    case true:print("true");
    case false : print("false");
    // ignore: unreachable_switch_default
    default : 
    print("default");
  }

}