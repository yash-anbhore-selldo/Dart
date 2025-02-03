

// Councurreycy -> 


import 'dart:io';

void main() {


  // fetch();
//   print("Start");

//   Future(() => print("Event Queue Task 1")); // Added to event queue
//   Future.microtask(() => print("Microtask 1")); // Added to microtask queue
//   Future(() => print("Event Queue Task 2")); // Added to event queue
//   Future.microtask(() => print("Microtask 2")); // Added to microtask queue

// /** output -  Event queue => lower priority , Micro => Higher
  
//     Start
//     End
//     Microtask 1
//     Microtask 2
//     Event Queue Task 1
//     Event Queue Task 2

//  */
//   print("End");

//   print("Future ");


//   fetchdata().then((data){
//     print(data);
  // });

  // print("Waiting ...");




}


Future<void> fetchfile(filename) async{


      var file = File(filename);
    


}

Future<String> fetchdata(){
  return Future.delayed(Duration(seconds: 2),()=>"DAta loaded");
}



