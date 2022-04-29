import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indianmilan/app/global_widgets/textEnter.dart';
import 'package:indianmilan/app/modules/Register_six/controllers/Register_six_cotroller.dart';
import 'package:indianmilan/app/utils/image_helper.dart';
import 'package:indianmilan/app/utils/string_helper.dart';


class Register_six_view extends GetView<Register_six_Controller> {


  @override
  Widget build(BuildContext context) {
    //LocalNotificationService.initialize(context);
    return
    Scaffold(
      body:  SingleChildScrollView(
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[

                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // image: const DecorationImage(
                      //   image: AssetImage(LOGIN_BACKGRAUND),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child:
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/1.8,
                          child: Image.asset(
                            LOGIN_BACKGRAUND,
                            fit: BoxFit.fill,
                          ),
                        ),

                      ],)


                ),

                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            BACK_BUTTON,
                            fit: BoxFit.fill,
                          ),
                        ),

                        Container(
                          height: 50,
                          width: 200,
                          padding: EdgeInsets.all(00),
                          margin: EdgeInsets.fromLTRB(20, 00, 00, 00),
                          child:  Image.asset(
                            SPLASH_IMAGE,
                            fit: BoxFit.fill,
                          ),
                        ),


                      ],),

                    Container(
                      padding: EdgeInsets.fromLTRB(20,5,20,5),
                      child: TextFieldShow(
                        color: Colors.white,
                        text: "",
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        fontsize: 18,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20,5,20,5),
                          child: TextFieldShow(
                            color: Colors.orangeAccent,
                            text: "",
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontsize: 10,
                          ),
                        ),
                      ],),


                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                      child:
                      Container(
                        // margin: EdgeInsets.fromLTRB(0,10,0,10),
                        // // height: MediaQuery.of(context).size.height/1.7,
                        // width  : MediaQuery.of(context).size.height/2,
                        // child: Column(
                        //   children: <Widget>[
                        //
                        //
                        //
                        //
                        //
                        //   ],),
                      ),
                    ),
                    Container(
                      //padding: const EdgeInsets.fromLTRB(00,00,00,00),
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30,20,30,20),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 00),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                          child: TextFieldShow(
                            color: Colors.white,
                            text: Continue,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            fontsize: 20,
                          ),
                        ),
                        onTap: () async {


                        },
                      ),
                    ),





                  ],)




              ],
            )

          ],)
      ),
    );
   }
}
