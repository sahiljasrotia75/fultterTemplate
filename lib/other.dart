import 'package:dummy_getx/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());

    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shopping Detail"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            return ListView.builder(
                itemCount: controller.getPosts.length,
                itemBuilder: (context, index) {
                  var item = controller.getPosts[index];
                  return Card(
                    child: ListTile(
                      leading: Text(item.id.toString()),
                      title: Text(item.body),
                      subtitle: Text(item.title),
                    ),
                  );
                });
          }))
        ],
      ),
    );
  }
}
