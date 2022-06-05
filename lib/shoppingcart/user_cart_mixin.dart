import 'package:flutter/material.dart';
import 'package:flutter_application_2/shoppingcart/product.dart';


class UserCart with ChangeNotifier {
List<Product> _products = [];
List<Product> get products => _products;

void addProductToCart(Product product) {
_products.add(product);
debugPrint('Adding Product : ${product.productName}');
notifyListeners();
}

void removeProductFromCart(Product product) {
_products.remove(product);
notifyListeners();
}

double get totalPrice =>
products.fold(0, (total, currentProduct) => total + currentProduct.price);
}
