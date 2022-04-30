import 'package:get/get.dart';

import '../controllers/login.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Bottom_navi_Controller>(
      () => Bottom_navi_Controller(),
    );
  }
}
