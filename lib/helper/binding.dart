import 'package:get/get.dart';
import 'package:shopping_now/view_model/HomeView_model.dart';
import 'package:shopping_now/view_model/auth_control.dart';
import 'package:shopping_now/view_model/auth_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthControl());
    Get.lazyPut(() => AuthModel());
    Get.lazyPut(() => HomeViewModel());
  }
}