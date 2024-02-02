import 'dart:io';
import 'product prosses.dart';
void main() {
  var storManaggment = StoreManagment();
  while (true) {
    print("""
     please input number
     1)enter item
     2)show item List
     3)delete item
     4)edit item
     5)running out item
     6)exit""");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        storManaggment.addProduct();
        break;
      case 2:
        storManaggment.showProducts();
        break;
      case 3:
        storManaggment.deleteProduct();
        break;
      case 4:
        storManaggment.editProduct();
        break;
      case 5:
        storManaggment.lowQuantityProducts();
        break;
      case 6:
        return;
      default:
        print("error! this number is incorrect");
    }
  }
}