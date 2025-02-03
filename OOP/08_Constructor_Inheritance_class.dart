
class A{
  int? age;
  A(this.age);

}

class B extends A{
    String? name;

    B(int age , this.name):super(age);   // call the super class constructor

    void show(){
      print("$age,   $name");
    }
}
void main() {
  
  B s = B(22,"Yash");

  s.show();


}
