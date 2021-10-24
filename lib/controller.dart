import 'dart:math';

import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt ball = 1.obs;

  void change() {
    ball.value = Random().nextInt(5) + 1;
  }
}