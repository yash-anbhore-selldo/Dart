import 'dart:io';

// list
// name , count  , price , priceforone

// cart
// name , count , priceforone

void main() {
  List<ShopList> slist = [];
  List<ShopList> scart = [];
  // double totalamount=0;
  // ShopList spl = ShopList();
  addBucketitem(slist);
  // addcart(scart,slist);
  // showCart(scart);
  // // showBucket(slist);
  // totalprice(slist,totalamount);

  var x;

  do {
    print("\n\n\n_______Shopping List___________");
    print("Type - 1 => Add item to cart");
    print("Type - 2 => Show Bucket ");
    print("Type - 3 => Show Cart ");

    print("Type Exit for exit");
    x = stdin.readLineSync();
    if (x.toLowerCase == "exit") return;

    switch (x) {
      case "1":
        addcart(scart, slist);
      // addtocarmess();
      case "2":
        showBucket(slist);
      case "3":
        showCart(scart);
    }
  } while (x.toLowerCase() != "exit");
}

void totalprice(List<ShopList> slist, totalamount) {
  totalamount = slist.fold(0.0, (sum, x) => sum + (x.price ?? 0));

  print(totalamount);
}

void showBucket(slist) {
  print("-------/----------/Bucket Item/----------/--------");
  print("\tFruits\t\tQuantity \t\tPrice for one item\t  Price for all");
  slist.forEach((x) => print(
      "\tt${x.name}\t\t${x.count} \t\t\t${x.priceforone} \t\t\t ${x.price}"));
}

void showCart(scart) {
  print("-------/----------/Cart Item/----------/--------");
  print("\tFruits\t\tQuantity \t\tPrice");
  scart.forEach((x) => print("\tt${x.name}\t\t${x.count} \t\t\t${x.price}"));
}

class ShopList {
  String? name;
  int? count;
  double? price;
  double? priceforone;

  ShopList({this.name, this.count, this.price, this.priceforone});
  ShopList.cart({this.name, this.count, this.price});
}

void addcart(List<ShopList> scart, slist) {
  var input;

  do {
    print("------------- Add to Cart  ------------------------ ");
    print("Enter Fruit Name");
    var fn = stdin.readLineSync();

    print("Enter Fruit Count");
    String? num = stdin.readLineSync();

    int count = int.tryParse(num ?? '') ?? 0;
    print("Count: $count");

    var price;
    var check = false;
    var checkcount = true;
    slist.forEach((x) => {
          if (fn == x.name)
            {
              check = true,
              price = count * x.priceforone,
              if (price > x.price)
                {checkcount = false}
              else
                {
                  x.count -= count,
                  x.price -= price,
                }
            }
        });

    print("Price for all $price");
    unless(check) {
      print("Enter valid Name");
      return;
    }

    if (!checkcount) {
      print("Enter valid count");
      return;
    }
    print("If you add more type Add");
    input = stdin.readLineSync();

    var x = new ShopList(name: fn, count: count, price: price);
    scart.add(x);
  } while (input != 'exit');
}

void updatebucket(scart, slist) {}

void addBucketitem(slist) {
  var input;
  do {
    print("------------- Enter Fruits in Bucket ------------------------ ");
    print("Enter Fruit Name");
    var fn = stdin.readLineSync();

    print("Enter Fruit Count");
    String? num = stdin.readLineSync();
    int count = int.tryParse(num ?? '') ?? 0;
    print("Count: $count");

    print("Enter Fruit Price for one banana");
    var fp = stdin.readLineSync();
    double priceone = double.tryParse(fp ?? '') ?? 0;

    double tprice = count * priceone;

    print("If you add more type Add");
    input = stdin.readLineSync();

    var x = new ShopList(
        name: fn, count: count, price: tprice, priceforone: priceone);
    slist.add(x);
  } while (input != 'exit');
}
































  // do {
  //   print("_______Shopping List___________");
  //   print("Type - 1 => Add item to cart");
  //   print("Type - 2 => Show Fruits Bucket");
  //   print("Type - 3 => Show Cart ");

  //   print("Type Exit for exit");
  //   x = stdin.readLineSync();
  //   if (x.toLowerCase == "exit") return;

  //   switch (x) {
  //     case "1":
  //     // showBucket();
  //     // showCart();
  //     // addtocarmess();
  //     case "2":
  //     // showBucket();
  //     case "3":
  //     // showCart();
  //   }
  // } while (x.toLowerCase() != "exit");