void main() {
  print(add(2, 3));
  print(mul(3, 3));

  print(com(2, 3, (a, b) => a - b));

/*
    // Function as First-Class Citizens
            //Functions in Dart are first-class citizens, 
            //meaning they can be assigned to variables, 
            //passed as arguments, and returned from other functions.

*/
  var greet = () => print("hi ");
  greet();



  // Arg function call

  nmdarg(name: "YAsh",age: 22);

  varlenarg("Yash", [1,2,3,4,4]);

  fucasarg(()=>print("\nFunction as an Argument\n"));

  reqarg("XXX",age:2 );

  defaultfunc();


}

int add(int a, int b) {
  return a + b;
}

// assigning a function to variable  or anonymous function
var mul = (int a, int b) => a + b;

// higher order function
int com(int a, int b, Function sub) {
  return sub(a, b);
}

// --------------- Argument Types
/**/
// *Positional Arguments: Arguments passed in the order they are defined.
    void posarg(String name , int age) {
        print("Name : $name Age : $age");
    }
    

    // *Optional Positional Arguments: Parameters inside [ ], can have default values.
    void optposarg(String name ,[int age = 18]){
        print("Name $name ");  // if age is not provided then 18 unless value 
    }

    //default argumenst 
    void defaultfunc([String? name , int age =18]){
      print("\nDefault function \nString $name , Age $age");
    }


    // *Named Arguments: Parameters inside { }, passed by name, can have default values.
    void nmdarg({String? name , int? age}){
        print("Name $name Age: $age");
    }
    
    // *Required Named Arguments: Parameters inside { required} with required keyword, must be passed.

    void reqarg(String name , {required int age}){
        print("\nRequired Arg :- \nName $name  Age : $age");
    }
    
    // *Variable-Length Arguments: You can pass any number of arguments (e.g., List or Map).
    void varlenarg(String name , List<int>xy){
      print("\nVariable Length ARG:- \nNAme : $name Xyz = $xy");
    }
    
    // *Function as Argument: Functions passed as arguments to other functions.

    void fucasarg(Function x){
      x();
    }



    
