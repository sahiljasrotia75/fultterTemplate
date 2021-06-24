import 'package:dummy_getx/model/product.dart';
import 'package:get/get.dart';

class Controller extends GetxController {

  var product = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }


  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [

      Product(
        id: 1,
        productName: 'First Product',
        productImage: 'abd',
        productDescription : 'some description about products',
        price: 30,
      ),

      Product(
        id: 2,
        productName: 'Second Product',
        productImage: 'abd',
        productDescription : 'some description about products',
        price: 40,
      ),

      Product(
        id: 3,
        productName: 'Third Product',
        productImage: 'abd',
        productDescription : 'some description about products',
        price: 50,
      ),

    ];
    product.value = productResult;
  }
}
