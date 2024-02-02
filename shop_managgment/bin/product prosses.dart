import 'dart:io';
class Product{
  String name;
  int price;
  int quantity;
  Product(this.name, this.price , this.quantity);
}
//*************************************************
class  StoreManagment {
  List<Product>products = [];
  // ***********************************
  void addProduct() {
    print("""Please enter the product name
    If you cancel, press 0 """);
    String? name = stdin.readLineSync();
    if (name == '0' )
      return;
    print("""Enter the price of the product
   If you cancel, press 0""");
    int price = int.parse(stdin.readLineSync()!);
    if (price == 0)
      return;
    print("""Enter the product number
     If you cancel, press 0 """);
    int quantity = int.parse(stdin.readLineSync()!);
    if (quantity == 0)
      return;
    var newProduct = Product(name!, price, quantity);
    products.add(newProduct);
    print('product ${newProduct.name} Successfully registered');
  }
  // *************************************
  void showProducts() {
    for (var i = 0; i < products.length; i++) {
      var product = products[i];
      print('${i + 1} ) ${product.name} price) '
          '${product.price}  quantity) ${product.quantity}');
    }
  }
  //****************************************
  void deleteProduct() {
    showProducts();
    print("""Enter the product number to delete
    If you cancel, press 0 """);
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 0 || choice > products.length)
      return;
    var deletedProduct = products.removeAt(choice - 1);
    print('product ${deletedProduct.name} Removed successfully');
  }
  //**************************************
  void editProduct() {
    showProducts();
    print("""Enter the product number to delete
    If you cancel, press 0""");
    var choice = int.parse(stdin.readLineSync()!);
    if (choice == 0 || choice > products.length)
      return;
    var product = products[choice - 1];
    print("""Enter new name for product 
     If you cancel, press 0""");
    String?newName = stdin.readLineSync();
    if (newName == null)
      return;
    print("""Enter new price for product 
     If you cancel, press 0""");
    int newPrice = int.parse(stdin.readLineSync()!);
    if (newPrice == 0)
      return;
    print("""Enter new quantity for product 
     If you cancel, press 0 """);
    int newQuantity = int.parse(stdin.readLineSync()!);
    if (newQuantity == 0)
      return;
    product.name = newName;
    product.price = newPrice;
    product.quantity = newQuantity;
    print("product ${newName} edit successfully");
  }
  //**************************************
  void lowQuantityProducts() {
    var lowQuantityList = products.where((product) => product.quantity < 5)
        .toList();
    for (var i = 0; i < lowQuantityList.length; i ++) {
      var product = lowQuantityList[i];
      print('${i + 1}) ${product.name} '
          'price ) ${product.price} quantity ) ${product.quantity}');
    }
  }
}

  




