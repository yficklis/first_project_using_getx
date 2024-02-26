import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({super.key});
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Screen was clicked ${_counterController.counter.value} times"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Open Other Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
