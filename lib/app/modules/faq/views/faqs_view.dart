import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class faqs_Profile extends StatefulWidget {
  const faqs_Profile({Key? key}) : super(key: key);

  @override
  State<faqs_Profile> createState() => _faqs_ProfileState();
}

class _faqs_ProfileState extends State<faqs_Profile> {


  List <String> Image = [
    'Image_Shortlist_prifile/c43790d490c5e0df03cf4f29f8984bc5.png',
    'Image_Shortlist_prifile/db6ddf6068a1dc97b258ac246dd12ec9.png',
    'Image_Shortlist_prifile/Rectangle 154.png',
    'Image_Shortlist_prifile/saree-girl-profile-pic-01.png',
    'Image_Shortlist_prifile/saree-profile-pics-dp-for-whatsa.png',
    'Image_Shortlist_prifile/saree-profile-pics-dp-for-whatsa (2).png',
  ] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shortlisted Profile"),
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 20,
            margin: EdgeInsets.only(left: 10, top: 10),
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

                itemCount: Image.length,
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
                                          Image[index]
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

}


