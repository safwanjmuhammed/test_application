import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/controller/controller_x.dart';

class Home2 extends StatefulWidget {
  const Home2({
    super.key,
  });

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  CounterController count = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${count.counter}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  count.decrement();
                },
                child: Text('Decrement'))
          ],
        ),
      ),
    );
  }
}
