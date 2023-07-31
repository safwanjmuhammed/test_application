import 'package:flutter/material.dart';

class FlexTest extends StatefulWidget {
  const FlexTest({super.key});

  @override
  State<FlexTest> createState() => _FlexTestState();
}

class _FlexTestState extends State<FlexTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('ONE')),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.yellow,
                child: const Center(child: Text('TWO')),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.transparent.withOpacity(0.5),
                child: const Center(child: Text('THREE')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
