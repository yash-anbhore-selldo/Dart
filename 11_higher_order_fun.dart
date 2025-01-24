


// ----------------------- Higher Order Function (Map , Filter , Reduce)  ------------------------
//  A function which takes func as an argument
//  Or it returns function as an argument




void main() {


// map -> it apply the function to each
  List<int> num = [1,2,3,4,5];
  var dob = num.map((n)=>n*2).toList();
  print(dob);


  // where : filter element based on condition
  var odd = num.where((n)=>n%2 !=0).toList();
  print(odd);

  // firstwhere similar but stops when it met the first condition
  var firstEven = num.firstWhere((n) => n % 2 == 0);
  print(firstEven); // Output: 2

  // reduce: Combine elements into a single value
  var sum = num.reduce((a, b) => a + b);
  print(sum); // Output: 15






 



  /**
   * Lazy Evaluation in Dart :- 
    *Dart's lazy evaluation means that functions 
    *like map and where on Iterable don't immediately execute. 
    *Instead, they create a chainable iterable that computes values only when needed.
    *This can improve performance, especially for large collections.
   */



  var numbers = [1, 2, 3, 4, 5];

  // Chaining map and where lazily
  var result = numbers
      .map((n) {
        print('Doubling $n');
        return n * 2;
      })
      .where((n) {
        print('Checking $n');
        return n > 5;
      });

  print('Before accessing the result');
  print(result.toList()); // Processing happens here
}





