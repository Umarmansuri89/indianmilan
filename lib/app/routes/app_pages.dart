import 'package:get/get.dart';
import 'package:indianmilan/app/modules/BottomNavigation/bindings/BottomNavigation.dart';
import 'package:indianmilan/app/modules/Login/bindings/loginBinding.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';
import 'package:indianmilan/app/modules/OTP_screen/bindings/OTPBinding.dart';
import 'package:indianmilan/app/modules/OTP_screen/views/OTP_view.dart';
import 'package:indianmilan/app/modules/Partner_preference/bindings/Partner_preference_Binding.dart';
import 'package:indianmilan/app/modules/Partner_preference/views/Partner_preference_view.dart';
import 'package:indianmilan/app/modules/Register/bindings/RegisterBinding.dart';
import 'package:indianmilan/app/modules/Register/views/Register_view.dart';
import 'package:indianmilan/app/modules/Register_five/bindings/Register_five_Binding.dart';
import 'package:indianmilan/app/modules/Register_five/views/Register_five_view.dart';
import 'package:indianmilan/app/modules/Register_four/bindings/Register_four_Binding.dart';
import 'package:indianmilan/app/modules/Register_four/views/Register_four_view.dart';
import 'package:indianmilan/app/modules/Register_six/bindings/Register_six_Binding.dart';
import 'package:indianmilan/app/modules/Register_six/views/Register_six_view.dart';
import 'package:indianmilan/app/modules/Register_three/views/Register_three_view.dart';
import 'package:indianmilan/app/modules/Register_two/bindings/Register_two_Binding.dart';
import 'package:indianmilan/app/modules/Register_two/views/Register_two_view.dart';
import 'package:indianmilan/app/modules/Upload_photo_screen/bindings/Upload_photoBinding.dart';
import 'package:indianmilan/app/modules/Upload_photo_screen/views/upload_photo_view.dart';
import 'package:indianmilan/app/modules/login_type/bindings/login_type.dart';
import 'package:indianmilan/app/modules/login_type/views/login_type_view.dart';
import 'package:indianmilan/app/modules/splash/bindings/splash_binding.dart';
import 'package:indianmilan/app/modules/splash/views/splash_view.dart';

import '../modules/Register_three/bindings/Register_three_Binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;


  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_TYPE,
      page: () => login_type_View(),
      binding: login_typeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => login_view(),
      binding: loginBinding(),
    ),

    GetPage(
      name: _Paths.REGISTER,
      page: () => Register_view(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_TWO,
      page: () => Register_two_view(),
      binding: Register_two_Binding(),
    ),
    GetPage(
      name: _Paths.REGISTER_THREE,
      page: () => Register_three_view(),
      binding: Register_three_Binding(),
    ),
    GetPage(
      name: _Paths.REGISTER_FOUR,
      page: () => Register_four_view(),
      binding: Register_four_Binding(),
    ),
    GetPage(
      name: _Paths.REGISTER_FIVE,
      page: () => Register_five_view(),
      binding: Register_five_Binding(),
    ),

    GetPage(
      name: _Paths.REGISTER_SIX,
      page: () => Register_six_view(),
      binding: Register_six_Binding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => OTP_view(),
      binding: OTPBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_PHOTO_SCREEN,
      page: () => Upload_photo_view(),
      binding: Upload_photoBinding(),
    ),
    GetPage(
      name: _Paths.PARTNER_PREFERENCE_SCREEN,
      page: () => Partner_preference_view(),
      binding: Partner_preference_Binding(),
    ),  GetPage(
      name: _Paths.PARTNER_PREFERENCE_SCREEN,
      page: () => Partner_preference_view(),
      binding: BottomNavigationBinding(),
    ),
  ];
}
