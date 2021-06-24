import 'package:dummy_getx/view/shopping_page.dart';
import 'package:dummy_getx/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'controller/controller.dart';
import 'other.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // set the AppBar Theme to our App.
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(headline6: TextStyle(color: Color(0xFF8B8B8B),fontSize: 18.0))
        ),
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor)
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     // home: ShoppingPage()));
      home: SplashScreen()));
}

/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
            child: RaisedButton(
                child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
*/
