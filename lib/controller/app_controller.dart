import 'package:dummy_getx/model/postmodel.dart';
import 'package:dummy_getx/services/services.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  var getPosts = List<PostModelDart>().obs;
  Services service = Services();

  @override
  void onInit() {
    callpostmethods();
    super.onInit();
  }

  callpostmethods() async {
    var result = await service.getallpost();
    if (result != null) {
      getPosts.assignAll(result);
    } else {
      print("null");
    }
  }
}
