import 'package:flutter/material.dart';
import 'package:flutter_application_2/getXdemos/cart_controller.dart';
import 'package:get/get.dart';
class UserCartScreen extends StatelessWidget {
  static const String routeName = '/Usercart';
  const UserCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Cart'),
      ),
      body: GetBuilder<CartController>(
        builder: ((controller) {
          return Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: controller.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            controller.selectedProducts[index].imageUrl),
                        title: Text(
                            controller.selectedProducts[index].productName),
                        subtitle: Text(controller.selectedProducts[index].price
                            .toString()),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                controller.increaseQuantityOfProduct(index);
                              },
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(controller.selectedProducts[index].quantity
                                .toString()),
                            const SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.decreeaseQuantityOfProduct(index);
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.removeProductsToCart(
                                    controller.selectedProducts[index]);
                              },
                              child: const Text('Remove'),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10),
              Text(
                'Total Proce : Rs. ${controller.totalCost}.',
                style: const TextStyle(fontSize: 30.0),
              )
            ],
          );
        }),
      ),
    );
  }
}