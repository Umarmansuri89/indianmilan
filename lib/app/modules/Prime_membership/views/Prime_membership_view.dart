import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Prime_membership/controllers/Prime_membership_controller.dart';



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';


class Premium_Membership_view extends GetView<Prime_membership_controller> {

  List <String> Images = [
    'Image_Shortlist_prifile/Group 55996.png',
    'Image_Shortlist_prifile/Group 55997.png',
    'Image_Shortlist_prifile/Group 55998 154.png',
  ];

  List <String> price=[
    "RS- 2399",
    "Rs- 1500",
    "Free"
  ];


  List <String> Time=[
    "( 1 Year )",
    "( 6 Months )",
    ""
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(

        leading:
        GestureDetector(
          onTap:(){
           // Get.offAllNamed(Routes.OTP_SCREEN);
          },
          child:  Container(
            margin: EdgeInsets.only(left: 10),
            height: 60,
            width: 60,
            child: Image.asset(
              BACK_BUTTON,
              fit: BoxFit.cover,
            ),
          ),
        ),


        title:
        //Text(),
        TextFieldShow(
          color: Colors.white,
          text: "Premium Membership",
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
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only( top: 00, bottom: 5),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(

            itemCount: Images.length,
            itemBuilder: (BuildContext context,int index) {

              return Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                margin: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                elevation: 15,
                child: Container(
                  height: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),


                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child:Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(top: 5, left: 5),
                              child: Card(
                                color: Colors.black,
                                elevation: 0,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child:Image.asset(king),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 5, right: 5, bottom: 3),
                              child: Text("Gold", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 5, right: 5, bottom: 3),
                              child: Text(price[index], textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 5, right: 5, bottom: 3),
                              child: Text(Time[index], textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(check),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                  child: Text("Send Unlimated messages", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(check),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                  child: Text("View up to unlimited Contacts", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(check),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                  child: Text("Stand out from other profile ", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 15,
                                  width: 15,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Image.asset(check),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 3),
                                  child: Text("let matches Contact you Directly", textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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


