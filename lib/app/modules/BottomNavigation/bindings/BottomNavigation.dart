import 'package:get/get.dart';

import '../controllers/BottomNavigation.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Bottom_navi_Controller>(
      () => Bottom_navi_Controller(),
    );
  }
}
