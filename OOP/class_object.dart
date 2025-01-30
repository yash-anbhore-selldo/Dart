

// classes is a blurprint 
// object is an instance


// if we declare somthing as private method that it is still accessible to the file we cannot access that beyod file


class CaO{
  // private field
  String? _name ;

  //public field
  int? age;
  

  void public_m(String name){
    this._name = name;
    print("Hello $_name this is public ");
  }


  // Private method just prefix '_' this with method name like "_privatem"
  void _privatem(){
    print("Hello private method");
    print("Name : $_name");
  }
}

class B extends CaO{
 
}

void main(){
  CaO obj = CaO();  // creating an object
  CaO obj1 = new CaO();  // both are allowed
  // obj.name="Yash"; // cant access as it is private write getter setter
  obj.age=12;
  obj.public_m("Yash");
  obj._privatem();   // it is still accessible as it is inside the same file

  B bobj = B();
  bobj._privatem();   /// we can access the private method in whole file including other classes which inherits them

}
