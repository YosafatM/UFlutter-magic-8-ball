import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body:  Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(
            onPressed: c.change,
            child: Obx(() => Image.asset('images/ball${c.ball.value}.png')),
          ),
        ),
      ),
    );
  }
}
