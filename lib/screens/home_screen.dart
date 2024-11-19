import 'package:flutter/material.dart';

// Main Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(
          child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text("h"))),
        )
    );
  }
}
