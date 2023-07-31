import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/controller/controller_x.dart';
import 'package:test_application/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CounterController count = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('COUNTER VALUE    ${count.counter}')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    count.increment();
                  },
                  child: const Text('Increment')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    count.decrement();
                  },
                  child: const Text('Decrement')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => Home2());
                  },
                  child: const Text('GO TO SECOND PAGE')),
            ),
          ],
        ),
      ),
    );
  }
}
