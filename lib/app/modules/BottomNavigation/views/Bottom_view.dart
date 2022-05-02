import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:indianmilan/app/modules/Home/views/Home_view.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';


class Bottom_view extends StatefulWidget {
  const Bottom_view({Key? key}) : super(key: key);

  @override
  State<Bottom_view> createState() => _Bottom_viewState();
}

class _Bottom_viewState extends State<Bottom_view> {

  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    Home_view(),
    Home_view(),
    Home_view(),
    Home_view(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: CustomLineIndicatorBottomNavbar(

        selectedColor: Colors.blue,
        unSelectedColor: Colors.black,
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        unselectedIconSize: 25,
        selectedIconSize: 30,

        onTap: (index) {
          setState(() {

            _selectedIndex = index;

          });
        },

        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Bottom,

        // gradient: LinearGradient(
        //   colors: [Colors.pink,Colors.yellow, ],
        // ),

        customBottomBarItems: [

          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),

          CustomBottomBarItems(
            label: 'Services',
            icon: Icons.miscellaneous_services,
          ),

          CustomBottomBarItems(
              label: 'Profile',
              icon: Icons.person
          ),

          CustomBottomBarItems(
            label: 'Notification',
            icon: Icons.notifications_none,
          ),

        ],
      ),
    );
  }

}


