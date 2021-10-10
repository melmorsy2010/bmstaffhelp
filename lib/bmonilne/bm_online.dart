import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class bmonline extends StatefulWidget {
  @override
  _bmonlineState createState() => _bmonlineState();
}

class _bmonlineState extends State<bmonline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
        Stack(
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 40,left: 10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: LightColors.kRed,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Center(child: Container(child: Center(child: Text("BM ONLINE GUIDE",style: GoogleFonts.cairo(color: LightColors.kRed,fontSize: 25,fontWeight: FontWeight.bold),)),)),
              ],
            ),
      ),
            Padding(
              padding: const EdgeInsets.only(right: 50,left: 50),
              child: Divider(color: LightColors.kRed,thickness: 1.5,),
            ),
          ],
        ),

              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30,),
                child: Container(
                  color: LightColors.kRed,
                  child: Center(child: Text("التسجيل على التطبيق",style:  GoogleFonts.cairo(color: Colors.white,fontSize: 20,),)),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
               child: Column(
                 children: [
               new Row(
               children: <Widget>[
                 Column(
                children: [
                  GestureDetector(
                    onTap: _launchURL,
                    child: new Container(
                      child: new Image.asset(
                        'assets/signup.jpg',
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  new Container(
                    child: new Text('تسجيل مستخدم جديد',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                ],
              ),
                Column(
                  children: [
                    new Container(
                      child: new Image.asset(
                        'assets/otp.jpg',
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text('تفعيل السوفت توكن',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                  ],
                ),
                Column(
                  children: [
                    new Container(
                      child: new Image.asset(
                        'assets/otp.jpg',
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text('نسيان كلمة السر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                  ],
                ),
                ],
              ),
            ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30,),
                child: Container(
                  color: LightColors.kRed,
                  child: Center(child: Text("التحويلات",style:  GoogleFonts.cairo(color: Colors.white,fontSize: 20,),)),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    children: [
            new Row(
              children: <Widget>[
                Column(
                  children: [
                    GestureDetector(
                      onTap: _launchURL2,
                      child: new Container(
                        child: new Image.asset(
                          'assets/transfer.PNG',
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    new Container(
                      child: Center(child: new Text('إضافه مستفيد جديد +   \n التحويل داخل بنك مصر',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),)
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: _ACH,
                      child: new Container(
                        child: new Image.asset(
                          'assets/transfer.PNG',
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    new Container(
                      child: Center(child: new Text('إضافه مستفيد جديد +   \n التحويل بنوك محليه ACH',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),)
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: _SWIFT,
                      child: new Container(
                        child: new Image.asset(
                          'assets/transfer.PNG',
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    new Container(
                      child: Center(child: new Text('إضافه مستفيد جديد +   \n التحويل دولي SWIFT',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),)
                  ],
                ),
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30,),
                child: Container(
                  color: LightColors.kRed,
                  child: Center(child: Text("الحسابات والشهادات",style:  GoogleFonts.cairo(color: Colors.white,fontSize: 20,),)),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    children: [
                      new Row(
                        children: <Widget>[

                          Column(
                            children: [
                              GestureDetector(
                                onTap: _account,
                                child: new Container(
                                  child: new Image.asset(
                                    'assets/otp.jpg',
                                    height: 150.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              new Container(
                                child: new Text('فتح حساب جديد',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: _Cd,
                                child: new Container(
                                  child: new Image.asset(
                                    'assets/otp.jpg',
                                    height: 150.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              new Container(
                                child: new Text('شراء شهاده',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: _time,
                                child: new Container(
                                  child: new Image.asset(
                                    'assets/otp.jpg',
                                    height: 150.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              new Container(
                                child: new Text('انشاء وديعه',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30,),
                child: Container(
                  color: LightColors.kRed,
                  child: Center(child: Text("البطاقات",style:  GoogleFonts.cairo(color: Colors.white,fontSize: 20,),)),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    children: [
                      new Row(
                        children: <Widget>[

                          Column(
                            children: [
                              new Container(
                                child: new Image.asset(
                                  'assets/otp.jpg',
                                  height: 150.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              new Container(
                                child: new Text('طلب بطاقه خصم فورى',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                          Column(
                            children: [
                              new Container(
                                child: new Image.asset(
                                  'assets/otp.jpg',
                                  height: 150.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              new Container(
                                child: new Text('طلب بطاقه ائتمانيه',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                          Column(
                            children: [
                              new Container(
                                child: new Image.asset(
                                  'assets/otp.jpg',
                                  height: 150.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              new Container(
                                child: new Text('ايقاف بطاقه حاليه',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30,),
                child: Container(
                  color: LightColors.kRed,
                  child: Center(child: Text("دفع الفواتير وشحن الهاتف",style:  GoogleFonts.cairo(color: Colors.white,fontSize: 20,),)),),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    children: [
                      new Row(
                        children: <Widget>[

                          Column(
                            children: [
                              new Container(
                                child: new Image.asset(
                                  'assets/otp.jpg',
                                  height: 150.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              new Container(
                                child: new Text('طلب بطاقه خصم فورى',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),

                        ],
                      ),
                    ]),
              ),
            ]),
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
  const url = 'https://drive.google.com/file/d/1WniRsf3uWT6lZ9-AbTUeCAF1-gcPb2Mp/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_ACH() async {
  const url = 'https://drive.google.com/file/d/12Vwj9A-02Z54eu0TMqiO1rOAikD1ScHg/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_SWIFT() async {
  const url = 'https://drive.google.com/file/d/188oDfoq2Jh24aTRRmNgA-wx3EvRNWATV/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_Cd() async {
  const url = 'https://drive.google.com/file/d/1Ddm3aLybBC1t5ZQ4Gyw4ACeu5R2CZx9l/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_account() async {
  const url = 'https://drive.google.com/file/d/1lbw7kHVimyLbaOoI-LXYW4CuRMkT18dL/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_time() async {
  const url = 'https://drive.google.com/file/d/1bF9JHTL6L3JGFuGJHLbJxlNTPJBc7rr1/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}