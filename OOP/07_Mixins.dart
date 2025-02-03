void main(){

    Animal dg = Animal();
    dg.greet();  // Now it will call 

}



mixin Carnivore {

  void greet(){
    print("Hi from Carnivore");
  }


  void greetcarnivore(){
    print("I eat Meat");
  }

}

mixin Terestial on Carnivore {
   void greet(){
    // super.greet();
    print("Hi from Terestial");
  }
  void greetterestial(){
    print("I live on land");
  }
}

class Dog with Carnivore,Terestial{
  void greet(){
    // super.greet();
    print("HI i am dog");
  }
  
}


class Animal extends Dog with Carnivore, Terestial {

  // Now in this if i call greet()
  // it does not have greet rn so 
  // it wont go for the supercall greet
  // it will check/overwrite the last mixins greet() which is terestial

  int? age;
  // void greet(){
  //   print("I am from Animal");
  // }

}