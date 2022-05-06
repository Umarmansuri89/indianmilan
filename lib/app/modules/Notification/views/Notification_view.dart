import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/modules/Notification/controllers/Notification_controller.dart';



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


class Notifications_View extends GetView<Notification_controller> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Notification"),
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
            onTap:(){
              Get.offAllNamed(Routes.Deshboard_view_screen);
            },
            child: Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
            ),
          ),

        ],

        leading:   Container(
          margin: EdgeInsets.only(left: 10),
          height: 60,
          width: 60,
          child: Image.asset(
            BACK_BUTTON,
            fit: BoxFit.cover,
          ),
        )
      ),
      body: Container(
        margin: EdgeInsets.only( top: 00, bottom: 5),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(

            itemCount: 15,
            itemBuilder: (BuildContext context,int index) {

              return Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                margin: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                elevation: 10,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                  ),


                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child:Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child:CircleAvatar(
                            radius: 20,
                            backgroundImage:AssetImage(Girls),
                          ),
                        ),
                      ),
                      Expanded(

                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 10, right: 5, bottom: 3),
                              child: Text("Anita garwal", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                              child: Text("Lorem ipsum dolor sit amet, Consetetur sadipsicind eli, seddiam nonumy eirmod tempor inviduntut labore et dolore magno aliquauyam erat, sed diam " , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                child:Row(
                                  children: [
                                    Container(
                                        height: 10,
                                        width: 10,
                                        margin: EdgeInsets.only(right: 5, left: 10, top: 5,bottom: 5),
                                        child: Image.asset(remaining_time)
                                    ),
                                    Text("2 hours ago" , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),),
                                  ],
                                )
                            ),


                          ],
                        ),
                      ),

                      // Container(
                      //   margin: EdgeInsets.only(right: 5),
                      //   child: Icon(Icons.delete_outline_sharp,color: ColorValues.BUTTONBACKGROUND,),
                      // )

                    ],
                  ),
                ),
              );

            }
        ),
      ),

    );
  }
}


