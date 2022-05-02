import 'package:get/get.dart';
import 'package:indianmilan/app/modules/BottomNavigation/bindings/BottomNavigation.dart';
import 'package:indianmilan/app/modules/BottomNavigation/views/Bottom_view.dart';
import 'package:indianmilan/app/modules/Help/bindings/Help_Binding.dart';
import 'package:indianmilan/app/modules/Help/views/Help_view.dart';
import 'package:indianmilan/app/modules/Home/bindings/Home_Binding.dart';
import 'package:indianmilan/app/modules/Home/views/Home_view.dart';
import 'package:indianmilan/app/modules/Login/bindings/loginBinding.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';
import 'package:indianmilan/app/modules/My_profile/bindings/profile_Binding.dart';
import 'package:indianmilan/app/modules/My_profile/views/profile_view.dart';
import 'package:indianmilan/app/modules/Notification/bindings/Notification.dart';
import 'package:indianmilan/app/modules/Notification/views/Notification_view.dart';
import 'package:indianmilan/app/modules/OTP_screen/bindings/OTPBinding.dart';
import 'package:indianmilan/app/modules/OTP_screen/views/OTP_view.dart';
import 'package:indianmilan/app/modules/Partner_preference/bindings/Partner_preference_Binding.dart';
import 'package:indianmilan/app/modules/Partner_preference/views/Partner_preference_view.dart';
import 'package:indianmilan/app/modules/Prime_membership/bindings/Prime_membership.dart';
import 'package:indianmilan/app/modules/Prime_membership/views/Prime_membership_view.dart';
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
import 'package:indianmilan/app/modules/Shortlisted_Profile/bindings/Shortlisted_Profile_Binding.dart';
import 'package:indianmilan/app/modules/Shortlisted_Profile/controllers/Shortlisted_Profile_controller.dart';
import 'package:indianmilan/app/modules/Shortlisted_Profile/views/Shortlisted_Profile_view.dart';
import 'package:indianmilan/app/modules/Term_n_condition/bindings/Term_n_condition_Binding.dart';
import 'package:indianmilan/app/modules/Term_n_condition/controllers/Term_n_condition_controller.dart';
import 'package:indianmilan/app/modules/Term_n_condition/views/Term_n_condition_view.dart';
import 'package:indianmilan/app/modules/Upload_photo_screen/bindings/Upload_photoBinding.dart';
import 'package:indianmilan/app/modules/Upload_photo_screen/views/upload_photo_view.dart';
import 'package:indianmilan/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:indianmilan/app/modules/dashboard/views/dashboard_view.dart';
import 'package:indianmilan/app/modules/login_type/bindings/login_type.dart';
import 'package:indianmilan/app/modules/login_type/views/login_type_view.dart';
import 'package:indianmilan/app/modules/privacy_policy/bindings/privacy_policy_Binding.dart';
import 'package:indianmilan/app/modules/privacy_policy/views/privacy_policy_view.dart';
import 'package:indianmilan/app/modules/splash/bindings/splash_binding.dart';
import 'package:indianmilan/app/modules/splash/views/splash_view.dart';

import '../modules/Partner_preference/controllers/Partner_preference_cotroller.dart';
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
    ),
    GetPage(
      name: _Paths.PARTNER_PREFERENCE_SCREEN,
      page: () => Partner_preference_view(),
      binding: Partner_preference_Binding(),
    ),

    GetPage(
      name: _Paths.BottomNavigation_screen,
      page: () => Bottom_view(),
      binding: BottomNavigationBinding(),
    ),

    GetPage(
      name: _Paths.Home_screen,
      page: () => Home_view(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.Bottom_view_screen,
      page: () => Bottom_view(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.Deshboard_view_screen,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.Notofication_screen,
      page: () => Notifications_View(),
      binding: Notification_Binding(),
    ),
    GetPage(
      name: _Paths.Profile_screen,
      page: () => profile_view(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.Prime_membership_screen,
      page: () => Premium_Membership_view(),
      binding: Prime_membership_Binding(),
    ),
    GetPage(
      name: _Paths.Shortlisted_Profile_screen,
      page: () => Shortlisted_Profile(),
      binding: Shortlisted_Profile_Binding(),
    ),
    GetPage(
      name: _Paths.help_screen,
      page: () => help(),
      binding: Help_Binding(),
    ),

    GetPage(
      name: _Paths.privacy_policy,
      page: () => privacy_policy_view(),
      binding: privacy_policyBinding(),
    ),
    GetPage(
      name: _Paths.Term_n_condition,
      page: () => Term_n_condition_view(),
      binding: Term_n_condition_Binding(),
    ),
  ];
}
