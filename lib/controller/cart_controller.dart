import 'package:dummy_getx/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;

  // calculate total price of the product..
  double get totalPrice => cartItems.fold(0, (sum, items) => sum + items.price);

  // item will add to the cart..
  addToCart(Product product) {
    cartItems.add(product);
  }

  clearTheCard(Product product){
   cartItems.clear();
  }
}
