/**
  *Every Class in Dart Implicitly Defines an Interface  
  *A class can be used as interface by another using "implements" 
  *It must override all methods and properties of the implemented class.
  *It does not inherit the implementation—it only gets the method signatures.
  *It allows multiple class implementations (unlike extends, which allows only one parent class).
 */



// https://chatgpt.com/c/67999f86-b92c-8008-8237-638612b48f10

void main(){
  // Animal x = Animal();  // Same like other lang abstract class cant be instantiated
  Dog dog = Dog();
  dog.greet();  // 

  Animal x = Dog();
  // x.greet(); // the greet metd of Animal is static thats why cant access
  Animal.greet();  // Hi Human
  // x.Apple();  // it cant be access as the Animal reference x has no method Apple

  Dog dg = Dog();
  dg.cat();

  Cat ct = Cat();
  ct.cat();

}

abstract class Animal{
  static void greet(){
    print("Hi Human ");
  }

  void f();  // Abstract method


}

// As the Abstract Animal class have f() method as abstract we must have to define it 
class Cat extends Animal{
  void f(){
    print("F froom CAt");
  }
  void cat(){
    print("Meow");
  }
}



  // we must define all the method of Animal as we implements it 
class Dog implements Animal , Cat{
  void greet(){
    print("hi I Am dog");
  }

  void f(){
    print("F from dog");
  }

  void Apple(){
    print("Apple");
  }
  
  @override
  void cat() {
    print("hi i am cat but i am into dogs");
  }
}