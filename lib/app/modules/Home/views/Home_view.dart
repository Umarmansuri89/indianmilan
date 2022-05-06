import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Home/controllers/HomeNavigation.dart';
import 'package:indianmilan/app/modules/Login/views/login_view.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


class Home_view extends GetView<HomeNavigation> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
    // Important: Remove any padding from the ListView.
       padding: EdgeInsets.zero,
       children: [
         DrawerHeader(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Drawer_Couple),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(PROFILE),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(00, 10, 00, 00),
                      child: Text(
                        ('ABC'),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Playfair Display',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 10),
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        edit_profile_white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],),


                  Container(
                    margin: EdgeInsets.fromLTRB(20, 00, 00, 00),
                    child: Text(
                      ('Chetan@gmail.com'),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_home,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Home'),
           onTap: () {
             Get.offAllNamed(Routes.Deshboard_view_screen);
           },
         ),

         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_cupel,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Pertner Prefreance'),
           onTap: () {
             Get.offAllNamed(Routes.partner_preference_details);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_star,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Shortlisted Profile'),
           onTap: () {
             Get.offAllNamed(Routes.Shortlisted_Profile_screen);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_chat,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('My chats'),
           onTap: () {},
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_heart,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('My Matches'),
           onTap: () {

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading:Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_home,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Support Pages'),
           onTap: () {
             Get.offAllNamed(Routes.help_screen);
           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_dayri,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Privecy Policy'),
           onTap: () {
             Get.offAllNamed(Routes.privacy_policy);

           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_condition,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Term And Condition'),
           onTap: () {
             Get.offAllNamed(Routes.Term_n_condition);
           },
         ),
         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_faqs,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('FAQs'),
           onTap: () {},
         ),

         ListTile(
           hoverColor: Colors.blue,
           dense: true,
           leading: Container(
             margin: EdgeInsets.only(left: 00),
             height: 50,
             width: 30,
             child: Image.asset(
               unselect_logout,
               fit: BoxFit.contain,
             ),
           ),
           title: Text('Logout'),
           onTap: () {},
         ),
      ],
    ),
       ),
       appBar: AppBar(
         title: TextFieldShow(
           color: Colors.white,
           text: "Location",
           fontFamily: 'Lato',
           fontWeight: FontWeight.w500,
           fontsize: 14,
         ),
         centerTitle: true,

         flexibleSpace: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight,
                 colors: <Color>[Colors.blue, Colors.pink]),
           ),
         ),

         actions: [
           GestureDetector(
             onTap:() {
               Get.offAllNamed(Routes.Notofication_screen);
             },

             child:  Container(
               margin: EdgeInsets.only(right: 12),
               child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
             )

           ),

         ],
       ),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  child:Row(
                    children: [
                      Card(
                        margin: EdgeInsets.only(top: 20,left: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)
                        ),
                        elevation: 2,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Image.asset(PROFILE,height: 65,),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 10),
                        child: Text("Find Your Life Partner",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      ),
                    ],

                  ),
                ),



                Container(
                  margin: EdgeInsets.only(right: 20,top: 20),
                  child: Icon(Icons.search,color: Colors.blue,),
                )
              ],
            ),
          ),

          Container(
            height: 45,
            margin: EdgeInsets.only(left: 10,top: 20,),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) =>

                  Container(
                    width: 140,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text("New Join",style: TextStyle(color: Colors.white),),
                        ),

                        Container(
                          child: Image.asset(white_heart,height: 20,color: Colors.white,),
                        )
                      ],
                    ),

                  ),



            ),
          ),

          Container(
            height: 340,
            margin: EdgeInsets.only(top: 25,left: 10),
            child:ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>

                    Container(
                      child: Stack(
                        children: [

                          Container(
                            width: 330,
                            // margin: EdgeInsets.only(left: 10,right: 10),
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: new DecorationImage(image: new AssetImage(Girls),),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 10,bottom: 40),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left:20,top: 20),
                                      child: Text("SUSMITA SHARMA",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:20,top: 1),
                                      child: Text("Age 26 | 160cm | 5ft",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left:20,top: 1),
                                      child: Text("Software Engineer- Company Name",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Container(
                                        child: Icon(Icons.location_on,color: Colors.white,),
                                      ),

                                      Container(
                                        width: 55,
                                        child: Text("23 main street new York",style: TextStyle(color: Colors.white),),
                                      )
                                    ],
                                  ),
                                )
                              ],

                            ),
                          ),

                        ],

                      ),
                    )



            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25,top: 20),
            alignment: Alignment.centerLeft,
            child: Text("Recently View",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
          ),

          Container(
            height: 160,
            margin: EdgeInsets.only(left: 10,top: 10),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      margin: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 300,

                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(girls1),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("Anita Garwal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("25yrs | 5'6",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("Agarwal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.red),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("Rs. 1-15 lakh",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 15),
                                  alignment: Alignment.center,
                                  height: 26,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text("Connect Now",style: TextStyle(color: Colors.red),),
                                )
                              ],
                            )

                          ],
                        ),

                      ),
                    )


            ),

          ),

          Container(
            height: 160,
            margin: EdgeInsets.only(left: 10,top: 25),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      margin: EdgeInsets.only(left: 15),
                      child: Container(
                          width: 300,
                          child:Image.asset(girls1,fit: BoxFit.cover,)

                      ),
                    )


            ),

          ),

          Container(
            margin: EdgeInsets.only(top: 15),
            child: Divider(
              color: Colors.black,
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top:1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: Text("Profile Visitors",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                ),

                Container(
                  child: Text("View All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                )
              ],
            ),
          ),

          Container(
            height: 210,
            margin: EdgeInsets.only(left: 10,top: 5),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) =>


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 190,
                        child: Image.asset(girls1,fit: BoxFit.fill,),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('Neha Rathore',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 1),
                              child: Text("25yrs | 5'5'| MP/ Indore"),
                            )
                          ],

                        ),
                      ),


                    ],


                  ),
            ),
          ),

          Container(
            // margin: EdgeInsets.only(top: 1),
            child: Divider(
              color: Colors.black,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[50],
            ),
            margin: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
            height: 170,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text("Mutual Matches",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image.asset(boys_matching),
                      ),

                      Container(
                        height: 70,
                        width: 100,
                        child: Image.asset(Girls_matching),
                      )
                    ],
                  ),
                ),

                Container(
                  child: Text("See All",style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.w600),),
                )
              ],
            ),

          ),

          Container(
            child: Divider(
              color: Colors.black,
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20,top: 5),
            child: Text("1,539 matches based on your preferences",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
          ),

          Container(
            height: 110,
            margin: EdgeInsets.only(left: 10,top: 15),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      margin: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 285,

                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(Girls),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("Monika Singh",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("25yrs | 5'6",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7,left: 5),
                                  child: Text("Hindi",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.red),),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [

                                      Container(

                                        height: 18,
                                        width: 30,
                                        child: Image.asset(send),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 2),
                                        height: 17,
                                        width: 25,
                                        child: Image.asset(chatting),
                                      ),
                                    ],
                                  ),
                                ),




                              ],
                            )

                          ],
                        ),

                      ),
                    )


            ),

          ),

          Container(
            margin: EdgeInsets.only(top: 5),
            child: Divider(
              color: Colors.black,
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Text("View All",style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.w600),),
          ),

          Container(
            child: Divider(
              color: Colors.black,
            ),
          ),

        ],
      ),
    );
  }

}


