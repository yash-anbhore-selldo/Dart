void main(){

  GetSet gs = GetSet();
  // print(gs._name();
  gs._name="Yash Anbhore";
  print(gs.name);

}

class GetSet{
  String _name ="Yash";
  int? age;

  set name(String? name){
    _name=name!;
  }
  String? get name => _name;
}