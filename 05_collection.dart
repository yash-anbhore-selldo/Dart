void main( ){
  // list();
  set();
}


void set(){
  /**
   *  set is an unordered collection of unique elements 
   *  As it use List-Hash in background so it is ordered
   * Sets are optimized for checking if an element exists (O(1) on average).
   */



  //        -------- 1. Creating Set -------------

      var emptySet = <int>{}; // Empty set
      print(emptySet);


      Set<int> nums0 = Set<int>(); // Using constructor
      Set<String> fruits = {'apple', 'banana', 'orange'};


      // set with different data types
      Set arrset = {1,2,3,4,"A","B"};
      print(arrset);


      // using Literals
      Set<String> fruitsset = {'apple', 'banana', 'orange'};  
      
      Set arr = {};
      print(arr.runtimeType);


  // ------------------- 2. Set Methods --------------------
  // contains , add() , addAll([]) , remove() , removeAll([]) , clear()


      //Contains -=> o(1)
      print("Does apple exists in basket? :${fruitsset.contains("apple")}");



      // Add and AddAll([])
      fruitsset.add('Kiwi');
      fruitsset.addAll(["Grapes","Apple","Apple"]);   // if you add the same value it wont give err but didnt add too

      print(fruitsset);

      // Remove RemoveAll Clear

      print("Fruits  are : $fruitsset");
      fruitsset.remove("apple");
      print("Fruits left after eating apple: $fruitsset");
      
      fruitsset.removeAll(["Apple","orange"]);
      print("Fruits left after eating apple and orange : $fruitsset");

      fruitsset.clear();
      print(fruitsset);



      // isEmpty isnotEmpty

      print("Is Basket empty ${fruitsset.isEmpty}");
      print("Is Basket not empty ${fruitsset.isNotEmpty}");

      fruitsset.addAll(["Apple","Banana","Orange","Kiwi","Grapes"]);

    // --------------------- 3. Operations in sets ------------------------
    //  Uniion , Intersection , Difference


    // --------  Union ----------


      var setA={1,2,3,4,5,5};  // it will not add 5 
      var setB = {6,7,8,9};

      var ans = setA.union(setB);

      print(setA);
      print(setB);
      print(ans);

    
    // ----------- Intersection ---------

      var setOne = {"A","B","C"};
      var setTwo = {"A","B","d","e"};

      var ansint = setTwo.intersection(setOne);

      print(ansint);


    // ---------- Difference --------------

    print(setOne.difference(setTwo));   //  C
    print(setTwo.difference(setOne));  // d , e



    // Iterator on set 
      var  numbers={1,3,4,2,5,6,7};

        for (var element in numbers) {
      print(element);
    }

    numbers.forEach((element) => print(element));

    


  



}
  






















void list(){

  /**
        //List is an ordered collection of objects,
        //It can be indexed 
        / It is mutable
   */



  // ----------------  1. Different ways to create list  --------------------------

    // Empty List
    List<int> numbers0 = List.empty();

    //List with elements
    List<int> numbers1 = [1, 2, 3, 4, 5];

    //Using constructor (size,value)
    List<int> numbers2 = List.filled(5, 0); // Creates a list with 5 zeros: [0, 0, 0, 0, 0]


    //List with Objects
    List<Object> obj = [1,2,3,"XYZ"];
    obj.add(3.14);  // Valid, as Object can hold any type

    //List with Nullable Type
    List<int?> x = [1,2,null];  


    print("Empty List : - $numbers0");
    print("Ele List : - $numbers1");
    print("Constructor List : - $numbers2");
    print("Object List : - $obj");
    print("Nullable Type : - $x");


    List lis=[1,3,'e'];
    print("List is $lis");






  // ------------------ 2. List Indexing and Accessing Elements ----------------------------------------
  // List are  0 indexed

  List <int> ind=[1,2,3,4,5];
  ind[0]=0;
  print(ind);    // [0,2,3,4,5]

  List<int> subList = ind.sublist(1, 3); // Output: [2, 3]  end exclusive
  print(subList);

  List liempt=[];


  // -------------------- Methods for list -------------------


  print("\n\n\nMethods of List \n\nLength of ind list is :\t ${ind.length}");   // 5 
  print("Is liemp list empty ? :\t ${liempt.isEmpty}");   // True
  print("Is ind list empty ?  :\t ${ind.isEmpty}");   // False


  // Add an ele in list 
  print("Before adding 6 \t $ind");
  ind.add(6);
  print("12 is Added to list ind  :\t $ind");   // False


  // Add multiple ele in list  ([])
  ind.addAll([7,9,10]);
  print("Add All  :\t $ind");   // False


  //Insert at specific index  - (index , value )
  ind.insert(1, 1);
  print("1 is added at second position $ind");


  //Insert multipe ele from specific index  - (index , value in [] )
  ind.insertAll(3, [21,22,23]);
  print("1 is added at first position $ind");



  //Remove an ele
  print(ind.remove(12));   // false as we dont have 12 in our list

  ind.remove(21);
  print("21 is removed $ind");



  //Remove at a specific index
  int temp = ind.removeAt(3);
  print("Value at 3rd index ($temp) is removed $ind");

  // clear all values from ind arr
  ind.clear();
  print("Array $ind");




  // -------------------  3. List Operation  ------------------




// Sort List: You can sort a list using the sort method.
List<int> nums0 = [3, 1, 4, 1, 5, 9];
print("\n\n\t\tList Operation\n\nList is : \t$nums0");
nums0.sort(); // List becomes: [1, 1, 3, 4, 5, 9]
print("Sorted List is \t$nums0");



// Reversed List: Use reversed to reverse the order of the list.
List<int> nums1 = [1, 2, 3];
var reversed = nums1.reversed.toList(); // Output: [3, 2, 1]  it wont change the actual list
print("Reverse lis nums1 $nums1");
print("Reversed Array : $reversed");


// Shuffle List: You can shuffle the elements randomly with the shuffle method.
nums0.shuffle(); // Randomized list
print("Shuffled List $nums0");




// Check if Contains: Use contains to check if an element exists in the list.
print(nums1.contains(3)); // Output: true

// First and Last Elements: You can access the first and last elements using .first and .last.


print(nums1.first); // Output: 1 (first element)
print(nums1.last);  // Output: 9 (last element)



// Iterable Operations: Dart's List is an Iterable, so you can use methods like forEach, map, where, and reduce.
nums1.forEach((element) => print(element)); 

}