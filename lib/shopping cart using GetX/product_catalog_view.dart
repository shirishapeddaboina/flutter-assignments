import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/getXdemos/cart_controller.dart';
import 'package:flutter_application_2/getXdemos/shopping_controller.dart';
import 'package:flutter_application_2/getXdemos/user_cart_screen.dart';
import 'package:get/get.dart';

class ProductCatalog extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  ProductCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Catalog'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                toAnimate: false,
                child: const Icon(Icons.shopping_cart),
                badgeContent: GetX<CartController>(
                  builder: ((controller) {
                    return Text(
                      controller.selectedProducts.length.toString(),
                      style:
                          const TextStyle(color: Colors.white, fontSize: 14.0),
                    );
                  }),
                ),
              ),
            ),
            onTap: () {
              // Get.to(const UserCartScreen());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserCartScreen()));
            },
          ),
        ],
      ),
      body: GetX<ShoppingController>(
        builder: ((controller) {
          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(controller.products[index].imageUrl),
                title: Text(controller.products[index].productName),
                subtitle: Text(controller.products[index].price.toString()),
                trailing: ElevatedButton(
                  child: const Text('Add'),
                  onPressed: () {
                    cartController
                        .addProductsToCart(controller.products[index]);
                  },
                ),
              );
            },
          );
        }),
      ),
    );
  }
}