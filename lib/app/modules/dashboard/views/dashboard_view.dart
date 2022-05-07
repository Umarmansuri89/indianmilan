import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/modules/Home/views/Home_view.dart';
import 'package:indianmilan/app/modules/Prime_membership/views/Prime_membership_view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../../utils/image_helper.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {

  final _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
         // backgroundColor: Theme.of(context).primaryColor,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(0.0),
            child: ClipRRect(
             // borderRadius: BorderRadius.all(Radius.circular(10)),
              child: BottomNavigationBar(
                elevation: 10,
                currentIndex: _currentIndex.value,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xffffffff),
                selectedItemColor: Colors.pink,
                unselectedItemColor: Colors.black.withOpacity(.60),
                selectedFontSize: 11,
                unselectedFontSize: 11,
                onTap: (value) {
                  _currentIndex.value = value;
                  // Respond to item press.
                },
                items: [

                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                  ),

                  BottomNavigationBarItem(
                    label: "Matches",
                    icon: Icon(Icons.heart_broken),
                  ),

                  BottomNavigationBarItem(
                    label: "Chat",
                    icon: Icon(Icons.chat_rounded),
                  ),

                  BottomNavigationBarItem(
                    label: "Premium",
                    icon: Icon(Icons.star),
                  ),

                  /*BottomNavigationBarItem(
                    label: "Settings",
                    icon: Icon(Icons.settings),
                  ),*/
                ],
              ),
            ),
          ),
          body: Stack(
            children: [
              Obx(() => SizedBox(
                height: controller.count.value.toDouble(),
              )),
              buildScreens[_currentIndex.value]
            ],
          ),
        ));
  }

  /*AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
        ),
      ],
      title: Center(
        child:  Image(
          image: AssetImage(Side_Menu),
          width: 100,
          height: 50,
        ),
      ),
    );
  }*/

  List buildScreens = <Widget>[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
   /* Screen5(),*/
  ].obs;
}

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      contentPadding: 5,
      title: "\n Home",
      textStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Lato',
      ),
      activeColorPrimary: Color(0xffEC297B),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 5,
      icon: Icon(Icons.add),
      title: ("Girls"),
      textStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Lato',
      ),
      activeColorPrimary: Color(0xffEC297B),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.calendar_today_outlined),
      title: ("\n Create Event"),
      textStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Lato',
      ),
      activeColorPrimary: Color(0xffEC297B),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.help_outline),
      contentPadding: 5,
      title: ("\n FAQ"),
      textStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Lato',
      ),
      activeColorPrimary: Color(0xffEC297B),
      inactiveColorPrimary: Colors.grey,
    ),
    /*PersistentBottomNavBarItem(
      icon: Icon(Icons.settings),
      contentPadding: 5,
      title: ("\n Profile"),
      textStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Lato',
      ),
      activeColorPrimary: Color(0xffEC297B),
      inactiveColorPrimary: Colors.grey,
    ),*/
  ];
}

Widget Screen1() {
  return Home_view();
}

Widget Screen2() {
  return Home_view();
}

Widget Screen3() {
  return Home_view();
}

Widget Screen4() {
  return Premium_Membership_view();
}

