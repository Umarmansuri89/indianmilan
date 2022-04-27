import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/shared_prefrence/shared_preferences_singleton.dart';
import '../../../utils/shared_prefrence/shared_prefrences_constant.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 1), navigateUser);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void navigateUser() async {
    String status = SharedPreferencesUtils.getBoolean(SDConstant.token).toString();
    print("status"+status);

  //   status.isNotEmpty && status!="false"
  //       ? Get.offAllNamed(Routes.DASHBOARD)
  //       : Get.offAllNamed(Routes.WELCOME);
   }
}
