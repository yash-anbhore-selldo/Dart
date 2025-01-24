void main() {


  /**
   * Key Properties
      current: 
        The current element in the iteration. 
        Returns null if no element is available or the iteration has ended.
      moveNext(): 
        Moves to the next element in the collection. 
        Returns true if there are more elements; otherwise, returns false.
   */
  var number = [1, 2, 3, 4, 5];
  Iterator<int> it = number.iterator;



  while(it.moveNext()){
    print(it.current);
  }
}
