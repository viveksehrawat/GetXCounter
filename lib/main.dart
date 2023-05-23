import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/reactiveGetX.dart';
import 'package:getx_counter/simpleGetx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(SimpleGetXExample());
              },
              child: Text('Simple GetX'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ReactiveGetXExample());
              },
              child: Text('Reactive GetX'),
            )
          ],
        ),
      ),
    );
  }
}
