// instance field
// static   field
// const  field
// final  filed
// private  filed

class Car {
  //Instance field  
  String? name;

  //static
  static int wheel = 4;

  //private 
  String? _brand = "";

  Car(this.name);

  // String get brand => _brand;

  // const
  static const String vehical ="car";

  void setter_brand(String brand){
    this._brand=brand;
  }

  void getter_brand(){
    print("Brand $_brand");
  }

  void show() {
    print("Hey , this is $_brand =>  $name  , Wheel $wheel");
  }


}

void main(){
  Car c1 = new Car("911");

  c1.setter_brand("Porsche");

  c1.show();

}