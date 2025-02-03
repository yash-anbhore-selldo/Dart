// Employee Management

// Employee -> id , name, age, dept,  (single)  ,

// (multiple)

//  phone number, Email, {number type, number, dial code} ,
// email {email type, email} , Adreess {city,lane1, state, pincode, nation}

// CRUD ops
// update / remove sprcific data like email or phone
// sort by name or age  (ASC or DESC)
// filter by dept
// paging (optional)

import 'dart:io';


void main() {
  Map<int?, Employee> emp = {
    1: Employee(
        id: 1,
        age: 22,
        phoneno: Phoneno(phone: [749938,387499]),
        pincode: 425001,
        name: "Yash",
        dept: "PE",
        address: Address(City: "Jalgaon", Lane1: "Ag", Nation: "India"))
  };
  int input;
  Map<Symbol,Symbol> m ={#name:#value,#nam:#value,#na:#value,#n:#value};
  print("Map of Symbol  ${m[#name]}");

  do {
    
    print("Employee Management System");
    print("Type - 1 => Add Employee");
    print("Type - 2 => Show Employee");
    print("Type - 3 => Show Employee by Dept");
    print("Type - 4 => Update Employee");
    print("Type - 5 => Delete Employee");
    print("Type - 6 => Exit");

    var inputstr = stdin.readLineSync();
    input = int.tryParse(inputstr??"")??0;

    switch(input){
      case 1: addEmployee(emp);
      case 2:showEmployee(emp);
      case 3:showEmployee(emp);
      case 4:updateEmployee(emp);
      case 5:deleteEmployee(emp);
      case 6:return;
      default :print("\n\t-----  Please enter valid input -------- \n");
    }

  } while (input != 5);

  addEmployee(emp); // C
  showEmployee(emp); // R
  updateEmployee(emp); // U
  showEmployee(emp); // R
  deleteEmployee(emp); // D
  showEmployee(emp); // R
  showEmployeeByDept(emp); // R
}

void showEmployeeByDept(Map<int?, Employee> emp) {
   print("------------------Employee By Dept----------");
  print(emp);
  emp.forEach(
    (x, y) => print("Id : $x ${y.name} ${y.dept} ${y.age} ${y.phoneno!.phone}}   "),
  );
}

void updateEmployee(Map<int?, Employee> emp) {
  print("Enter id of emp to update");
  var id = stdin.readLineSync();
  int empid = int.tryParse(id ?? '') ?? 0;

  print("Enter Age ");
  var age = stdin.readLineSync();

  int empage = int.tryParse(id ?? '') ?? 0;

  print("Enter phone ");
  var phoneno = stdin.readLineSync();

  int empphoneno = int.tryParse(id ?? '') ?? 0;

  print("Enter Name ");
  String? name = stdin.readLineSync();

  var checkempexist = false;

  // ignore: unnecessary_set_literal
  emp.forEach((x, y) => {
        if (x == empid)
          {
            print("Employee exits"),
            checkempexist = true,
            y.name = name,
            y.age = empage,
          }
      });

  if (!checkempexist) {
    print("Employee Does not exits");
    return;
  }
}

void deleteEmployee(Map<int?, Employee> emp) {
  print("Enter id of emp to delete");
  var id = stdin.readLineSync();
  int empid = int.tryParse(id ?? '') ?? 0;

  // ignore: unnecessary_set_literal

  emp.remove(empid);
}

class Employee {
  int? id;
  int? age;
  int? pincode;

  String? name;
  String? dept;

  Phoneno? phoneno;
  Address? address;

  Employee(
      {this.id, this.age, this.phoneno, this.pincode, this.name,this.dept, this.address});
}
class Phoneno{
  List<int?> phone;

  Phoneno({required this.phone});
}
class Address {
  String? City;
  String? State;
  String? Nation;
  String? Lane1;

  Address({this.City, this.State, this.Nation, this.Lane1});
}

void addEmployee(slist) {
  var input;
  int i = 2;
  do {
    print("------------- Enter Employee Details ------------------------ ");
    print("Enter Name");
    var name = stdin.readLineSync();

    print("Enter Age");
    String? num = stdin.readLineSync();
    int age = int.tryParse(num ?? '') ?? 0;

    if(age<=0){
      print("Enter VAalid Age");
      return;
    }

    print("Enter Phoneno");
    var no = stdin.readLineSync();
    int phoneno1 = int.tryParse(no ?? '') ?? 0;
    if(phoneno1<=0){
      print("Enter VAalid Phoneno");
      return;
    }
    print("Enter Phoneno");
    var no2 = stdin.readLineSync();
    int phoneno2 = int.tryParse(no2 ?? '') ?? 0;
    if(phoneno2<=0){
      print("Enter VAalid Phoneno");
      return;
    }
    print("Enter Dept Name");
    var dname = stdin.readLineSync();

    var phoneno=[phoneno1,phoneno2];
    print("If you add more type Add");
    input = stdin.readLineSync();

    var y = new Address(
      Lane1: "HHH",
    );

    var phonenoobj = new Phoneno(phone: phoneno);
    var x = new Employee(name: name, age: age, phoneno: phonenoobj,dept: dname, address: y);
    // slist.add(2,x);
    slist[i] = x;
    i++;
    print(i);
  } while (input != 'exit');
}

void showEmployee(Map<int?, Employee> emp) {
  print("------------------Employee----------");
  print(emp);
  emp.forEach(
    (x, y) => print("Id : $x ${y.name} ${y.dept} ${y.age} ${y.phoneno!.phone}}   "),
  );
}
