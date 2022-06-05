import 'package:flutter_application_2/getXdemos/product.dart';
import 'package:flutter_application_2/getXdemos/product_service.dart';
import 'package:get/get.dart';
class ShoppingController extends GetxController {
List<Product> products = <Product>[].obs;
@override
void onInit() {
super.onInit();
getProductDetails();
}
void getProductDetails() async {
products.assignAll(ProductService().getProducts().toList());
}
}
