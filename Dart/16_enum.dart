
 enum days{sunaday , MTuesonday,  Wednesdaat , Thrursday,  }


void main(){
  print(days.values[0]); // days.Sunday
  print(days.values[0].name); // Sunday


  days ndays = days.MTuesonday;

  print(ndays.index);  // 1
  print(ndays);  // days.Mtuesonday

  // print(ndays.values[0]);  // cant be accessed through instance
  
}

