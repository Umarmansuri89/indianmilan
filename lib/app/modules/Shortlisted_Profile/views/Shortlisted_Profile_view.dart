import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Shortlisted_Profile/controllers/Shortlisted_Profile_controller.dart';
import 'package:indianmilan/app/routes/app_pages.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';

class Shortlisted_Profile extends GetView<Shortlisted_Profile_controller> {


  @override
  Widget build(BuildContext context) {
    return
      Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CupertinoActivityIndicator());
        } else {
          return
            Scaffold(
              appBar: AppBar(
                leading:
                    GestureDetector(
                      onTap: (){
                       Get.back();
                      },
                      //
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




                title: TextFieldShow(
                  color: Colors.white,
                  text: SHORTLISTED,
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
                        Get.toNamed(Routes.Notofication_screen);
                      },

                      child:  Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Icon(Icons.notifications_none_outlined,color: Colors.white,),
                      )

                  ),
                ],
              ),
              body: ListView(
                children: <Widget>[
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "15 Shortlisted Profile",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only( top: 10, bottom: 10),
                    height: MediaQuery.of(context).size.height/1.2,
                    child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (BuildContext context,int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                            elevation: 10,
                            color: Colors.white,
                            child: Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child:Card(
                                        elevation: 0,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  Girls
                                              ),
                                              // image: NetworkImage(
                                              //     "https://www.whatsappimages.in/wp-content/uploads/2021/03/New-Top-Quality-Cute-Girl-Images-For-Whatsapp-Dp-Wallpaper-Download.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
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
                                              fontSize: 10),),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                          child: Text("25Yrs | 5'6*' Agrwal " , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                          child: Text("Software professional" , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                          child: Text("Hindi - MP/CG" , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                          child: Text("Rs, 1.5 Lakh" , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.orange),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          padding: EdgeInsets.only(left: 15, top: 2, right: 5, bottom: 3),
                                          child: Text("Connect Now" , textAlign: TextAlign.justify,style: GoogleFonts.roboto(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),),
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

                ],
              ),
            );
        }
      });

  }

}


