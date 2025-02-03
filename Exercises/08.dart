import 'dart:io';

void main() {
  print("Enter net salary and expenses");
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    var parts = input.split(" ");
    double? netsal = double.tryParse(parts[0]);
    double? expense = double.tryParse(parts[1]);

    if(netsal!=null && expense!=null){
      
    }
  }
}
