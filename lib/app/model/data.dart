import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Controller extends GetxController{
  // functions
  var count = 0;
  void increment() {
    count++;
    update();
  }
  void decrement() {
    count--;
    update();
  }
}