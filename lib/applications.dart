import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:flutter/cupertino.dart';

import 'package:bmstaffhelp/creditcardoffers/visaplatinuium.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'murabha2.dart';

class application extends StatefulWidget with NavigationStates{
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {
  void _showErrorSnackBar() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Oops... the URL couldn\'t be opened!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(

        children: [

          Container(
            height: 1000,
            child: Image.asset(
              'assets/appl.jpg', fit: BoxFit.cover, width: MediaQuery
                .of(context)
                .size
                .width,),
          ),

          Container(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 100,),

                    Center(
                      child: RaisedButton(
                        child: Text(
                          "شهادات الادخار",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                                  RaisedButton(
onPressed: _launchURL3,
                                  child: Text(
                                    "طلب استرداد شهادات",
                                    style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                  textColor: ArgonColors.primary,
                                  color: ArgonColors.warning,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "شراء شهاده (نمطى)",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                  textAlign: TextAlign.center,
                            ),
                        textColor: ArgonColors.primary,
                        color: ArgonColors.warning,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      SizedBox(width: 5,),
                      RaisedButton(
                        onPressed: _launchURL2,
                        child: Text(
                          "شراء شهاده (اسلامى)",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.primary,
                        color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب تغيير حساب مرتبط",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: RaisedButton(
                        child: Text(
                          "بطاقات الخصم الفورى",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "Individual Debit card ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLtafweed,
                              child: Text(
                                "تفويض ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLtafweed,
                              child: Text(
                                "طلب ربط عده حسابات ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLvipcard,
                              child: Text(
                                "VIP Debit card",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "Reset pin",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "Cancel Debit Card",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: RaisedButton(
                        child: Text(
                          "البطاقات المدفوعه مقدما",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "كارت ميزه ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "كارت الانترنت",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "كارت هديه",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "Cancel prepaid Card",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          "الحسابات",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURLcloseaccount,
                              child: Text(
                                "طلب اغلاق حساب ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب حفظ مراسلات",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: launchURLkyc,
                              child: Text(
                                "طلب تحديث بيانات",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLcheque,
                              child: Text(
                                "طلب دفتر شيكات",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURLtawkeel,
                              child: Text(
                                "توكيل مصرفي ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLmoneytransfer,
                              child: Text(
                                "طلب تحويل اموال",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLEKRARHEBA,
                              child: Text(
                                "إقرار هبه",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب دفتر شيكات",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          "الخدمات الالكترونيه",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURLcloseaccount,
                              child: Text(
                                "طلب اشتراك اونلاين ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب الغاء اونلاين",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: launchURLkyc,
                              child: Text(
                                "طلب BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLcheque,
                              child: Text(
                                "طلب الغاء BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          "الكروت الائتمانيه",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURLcloseaccount,
                              child: Text(
                                "طلب اشتراك اونلاين ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب الغاء اونلاين",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: launchURLkyc,
                              child: Text(
                                "طلب BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLcheque,
                              child: Text(
                                "طلب الغاء BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          "الكروت الائتمانيه",
                          style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        textColor: ArgonColors.black,
                        color: ArgonColors.initial,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [

                            RaisedButton(
                              onPressed: _launchURLcloseaccount,
                              child: Text(
                                "طلب اشتراك اونلاين ",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURL,
                              child: Text(
                                "طلب الغاء اونلاين",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: launchURLkyc,
                              child: Text(
                                "طلب BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),
                            RaisedButton(
                              onPressed: _launchURLcheque,
                              child: Text(
                                "طلب الغاء BM WALLET",
                                style: GoogleFonts.tajawal(color: Colors.white,fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                              textColor: ArgonColors.primary,
                              color: ArgonColors.warning,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                    ),
    ]
              ),
            ),

          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top:50,left: 50,),
                child: SizedBox(
                  width: AppBar().preferredSize.height,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                      BorderRadius.circular(AppBar().preferredSize.height),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: DesignCourseAppTheme.nearlyBlack,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SideBarLayout()));
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:50,left: 50,),
                child: Text("Applications",style: GoogleFonts.lato(color:DesignCourseAppTheme.nearlyBlack,fontSize: 18,fontWeight: FontWeight.bold),),
              )
            ],
          ),

        ],
      ));
  }
}

_launchURL() async {
  const url = 'https://drive.google.com/file/d/1V-TEZRJ1mOFaC4534Nd_uUGTGw1Cb0_B/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://drive.google.com/file/d/1uYEFSCvoB_Uml1y7aKsyPTfCh67ycPCU/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://drive.google.com/file/d/19BHKc3nXVuNBe2M1pbo7WHMh7Qz3wldd/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLvipcard() async {
  const url = 'https://drive.google.com/file/d/1XfItMcj0euwY_cGHqV0QQtKjkp2oJ4Xx/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLcloseaccount() async {
  const url = 'https://drive.google.com/file/d/1EjFrkOW1B86-518fxdQxloiiHU0DK2-u/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


launchURLkyc() async {
  const url = 'https://drive.google.com/file/d/17U-RjNQMe4Y94vYDvhDm3gRO9akNTpQc/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLcheque() async {
  const url = 'https://drive.google.com/file/d/12hI_DI6Zxy58auJ93ArgQTIIvVKR1k3C/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLtawkeel() async {
  const url = 'https://drive.google.com/file/d/1KD559Daw2sfnpriGj1CheQCtS_wgJcL8/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLmoneytransfer() async {
  const url = 'https://drive.google.com/file/d/1HjC54vHqUl1qCwf2srbkyYfireNtbEqF/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLEKRARHEBA() async {
  const url = 'https://drive.google.com/file/d/16zIG5iiw-dGgrusstIeqMtW-K_IrQPZL/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLtafweed() async {
  const url = 'https://drive.google.com/file/d/16fPcHA5FMKndjxRBOSGp-S0PvQB5luXn/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

