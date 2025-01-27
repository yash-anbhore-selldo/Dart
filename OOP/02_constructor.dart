class Constructor {
  String? name;
  int? age;
  // 1. if no constructor is defined there is a default constructor

  // 2. parameterized constructor
  Constructor(String name, int age) {
    this.name = name;
    this.age = age;
    print("Name $name");
    Constructor.greet();
  }

  //3. Named constructor
  Constructor.greet() {
    print("Basic Constructor");
    print("Name = $name , Age = $age");
  }

  //4. Constant Constructor - All field must be final 
  // remaining

  // final double? radius;
  // remaining

  // const Constructor(this.radius);   // all field must be final 
  // remaining


  // 5.Factory Constructor
  // remaining

  // 6. REdirecting COnstructor
  // remaining

  void show() {
    print("Name = $name , Age = $age");
  }
}

void main() {
  var obj = Constructor("Yash", 22);
  obj.show();
}
