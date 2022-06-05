import 'package:flutter_application_2/getXdemos/product.dart';
import 'package:get/get.dart';
class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;

  void addProductsToCart(Product product) {
    selectedProducts.add(product);
    update();
  }

  void removeProductsToCart(Product product) {
    selectedProducts.remove(product);
    update();
  }

  void increaseQuantityOfProduct(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].quantity * selectedProducts[index].price;
    update();
  }

  void decreeaseQuantityOfProduct(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].quantity * selectedProducts[index].price;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProducts) => total + selectedProducts.quantityPrice);
}
