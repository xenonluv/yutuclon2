
import 'package:get/get.dart';
import 'package:youtuclone2/src/controller/app_controller.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Appcontroller());
  }
}