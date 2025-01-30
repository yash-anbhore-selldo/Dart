/**
 * ----------- Polymorphism single name multiple form ---------------
 *            ONly supports (run-time poly)overridding not overloading(compile-time poly)
 *   
 */

void main(){

  Poly sup = Poly();
  sup.runpoly();

  sup = Sub();
  sup.runpoly();

  sup = Sub2();
  sup.runpoly();
}


class  Poly{

  void runpoly(){
    print("Super class method");
  }

    // it gives error at compile time
    // void runpoly(){
    //   print("Not possible");
    // } 

}

class Sub extends Poly{
  void runpoly(){
    print("Sub class method Runtime Poly");
  }
}

class Sub2 extends Poly{
  void runpoly(){
    print("Super class Poly from sub2");
    super.runpoly();
    print("Sub2 class method Runtime Poly");
  }
}