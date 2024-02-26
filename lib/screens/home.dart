import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/counter_controller.dart';
import 'package:getx_project/screens/other.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Clicks: ${counterController.counter.value}'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: const Text('Open Other Screen'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
