import 'package:dummy_getx/controller/cart_controller.dart';
import 'package:dummy_getx/controller/controller.dart';
import 'package:dummy_getx/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingContoller = Get.put(Controller());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Products"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<Controller>(builder: (contoller) {
                return ListView.builder(
                  itemCount: contoller.product.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(12.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${contoller.product[index].productName}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  '\$${contoller.product[index].price}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${contoller.product[index]
                                      .productDescription}',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                RaisedButton(
                                  child: Text("Add to Cart"),
                                  onPressed: () {
                                    cartController.addToCart(contoller.product[index]);
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RaisedButton(
                                  child: Text("Clear Card"),
                                  onPressed: () {
                                    cartController.clearTheCard(contoller.product[index]);
                                  },
                                  color: Colors.redAccent,
                                  textColor: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),

            GetX<CartController>(builder: (controller) {
              return RaisedButton(
                onPressed: (){
                  Get.to(Other());
                },
                color: Colors.orangeAccent,
                textColor: Colors.white,
                child: Text(
                  'Total amount: \$ ${controller.totalPrice}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              );
            }),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
