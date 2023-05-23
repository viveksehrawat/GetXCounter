import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/getXCounter/reactiveCounterController.dart';

class ReactiveGetXExample extends GetView<ReactiveCounterController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveCounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple GetX example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Value ${controller.value}',
                  style: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.add();
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.subtract();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
