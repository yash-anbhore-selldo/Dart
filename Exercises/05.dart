void main() {
  String? str = "DArt Course";

  str = str.toLowerCase();
  // print(str);

  str = str.toUpperCase();
  // print(str);

  String fcap = str[0].toUpperCase() + str.substring(1).toLowerCase();
  // print(fcap);

var strq = "DArt Course  ";
var x = strq.split(' ');
print(x);

var allfcap = x.map((word) =>
    word.isNotEmpty ? word[0].toUpperCase() + word.substring(1).toLowerCase() : ''
).join(' ');

print(allfcap); 
}
