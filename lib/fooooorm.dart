import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class foorm extends StatefulWidget {
  @override
  _foormState createState() => _foormState();
}

class _foormState extends State<foorm> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0XFF802b40),
    ));

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("النماذج",style: GoogleFonts.cairo(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 7)),

        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SideBarLayout()));
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
body: Container(
  child: SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF802b40),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.only(left: 120,right: 120),
            child: Center(child:
            Text("الشهادات",style: GoogleFonts.cairo(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 7))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                enableFeedback: true,
                highlightColor: Color(0XFF802b40),
                canRequestFocus: true,
                onTap: _launchURL,
                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/hold.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("شراء شهاده نمطي",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                  onTap: _launchURL2,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/hold.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("شراء شهاده إسلامى",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURL3,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/hold.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("استرداد شهادات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLhesabmortabt,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/hold.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("تغيير حساب مرتبط",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF802b40),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.only(left: 70,right: 70),
            child: Center(child:
            Text("بطاقات الخصم الفورى",style: GoogleFonts.cairo(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 7))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _launchURLdebitcard,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/icon.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب خصم فورى",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLvipcard,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/icon.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب خصم فورى (VIP)",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLresetpin,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/icon.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("اصدار كلمه سر",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLcanceldebit,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/icon.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب إالغاء كارت",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLe3trad,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/icon.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب اعتراض",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURcordebit,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/debit.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("خصم فورى شركات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLecancelcoredebit,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/debit.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("الغاء بطاقه شركات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLcorreset,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/debit.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("ًكلمه سر شركات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLtafweed,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("تفويض",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF802b40),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.only(left: 60,right: 60),
            child: Center(child:
            Text("البطاقات المدفوعه مقدما",style: GoogleFonts.cairo(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 7))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              GestureDetector(
                onTap: _launchURLhewalty,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("اصدار كارت حوالتى",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLhedya,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("اصدار كارت هديه",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLinternet,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("اصدار كارت انترنت",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLreissuepre,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("اصدار بدل فاقد",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLestada,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("استعاده نقديه",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLtafweed,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("تفويض",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF802b40),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.only(left: 90,right: 90),
            child: Center(child:
            Text("الخدمات الالكترونيه",style: GoogleFonts.cairo(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 7))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _onlinecancel,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/accounts.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب اشتراك اونلاين",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _onlinecancel,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/accounts.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("طلب الغاء اونلاين",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _bmwallet,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/accounts.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("BM WALLET اشتراك",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _bmwalletcancel,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/accounts.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("BM WALLET الغاء",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _bmwalletrestpin,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/accounts.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("BM WALLET كلمه سر",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF802b40),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.only(left: 120,right: 120),
            child: Center(child:
            Text("الحسابات",style: GoogleFonts.cairo(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 7))),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              GestureDetector(
                onTap: _launchURLhewalty,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("حفظ مراسلات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLhedya,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("دفتر شيكات",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLinternet,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("مصادقه",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLreissuepre,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("KYC",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLestada,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text(" دوريه كشف حساب",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLtafweed,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("تعديل حق اليوم",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
              GestureDetector(
                onTap: _launchURLtafweed,

                child: Container(

                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  decoration: BoxDecoration(
                    color:Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(29),

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            image: AssetImage('assets/prepaid.jpg'),),

                          shape: BoxShape.rectangle,

                        ),


                      ),
                      SizedBox(height: 8),
                      Center(child:
                      Text("توكيل ",style: GoogleFonts.cairo(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      )],
                  ),

                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
),
    );
  }
}

_launchURL() async {
  const url = 'https://drive.google.com/file/d/1hNzxUAedt5B2i_MvPgF4HZexC1sDz-nL/view?usp=sharing';
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
_launchURLhesabmortabt() async {
  const url = 'https://drive.google.com/file/d/1CmvS61txslHww1PYA3SYvkCIBuMTR5X4/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLdebitcard() async {
  const url = 'https://drive.google.com/file/d/1Q_D7AbBLlqdSPHdH363eLWkSUZH3UwFY/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLresetpin() async {
  const url = 'https://drive.google.com/file/d/1rWTm201T80JqWX37pzcd7JdUwYC3myJ5/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLvipcardd() async {
  const url = 'https://drive.google.com/file/d/1XfItMcj0euwY_cGHqV0QQtKjkp2oJ4Xx/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLcanceldebit() async {
  const url = 'https://drive.google.com/file/d/1KHmQztBZ9SA5mIXByBWna0rFV7pPBIr8/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLe3trad() async {
  const url = 'https://drive.google.com/file/d/1DTJmYgIecjLu1tMVq8T2gplAajplE5IL/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURcordebit() async {
  const url = 'https://drive.google.com/file/d/1OCRy2oKkBMJCOimksfGoN_9qucfS4i21/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLecancelcoredebit() async {
  const url = 'https://drive.google.com/file/d/1K-3w1S1tCdvHc94XL7RTdTm3_tUKU3tX/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLcorreset() async {
  const url = 'https://drive.google.com/file/d/1t2GUClZXHSVL67xKW0iPgsDnZefw1V_7/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLhewalty() async {
  const url = 'https://drive.google.com/file/d/1G3KJQizK0enVEOfwTCqeisxjN7wGucmI/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLhedya() async {
  const url = 'https://drive.google.com/file/d/1hpiXS55B2wLg3IRLnxeLA57hrbDcOZNH/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLinternet() async {
  const url = 'https://drive.google.com/file/d/1ATviKR91FRA09t8ui8a0ZJJX0E9Etk0q/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLreissuepre() async {
  const url = 'https://drive.google.com/file/d/11Ip18rELMBYIVNZ4Pnilj1NVvtMX8zag/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLestada() async {
  const url = 'https://drive.google.com/file/d/1DI3NfbvLM8EySgf_ALIAnOkoEI8nL-rf/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_onlinecancel() async {
  const url = 'https://drive.google.com/file/d/1aE-eF-ka48QWII1WFKg35qT8qlhUUVTn/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_bmwallet() async {
  const url = 'https://drive.google.com/file/d/1BH9VJ39znzvSogkM9Y3eDBGwo7mIvKfl/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_bmwalletcancel() async {
  const url = 'https://drive.google.com/file/d/1ZYsg3MHxlMxDFIEoFYE5iKCSPXwk94XQ/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_bmwalletrestpin() async {
  const url = 'https://drive.google.com/file/d/1XKwGBlg3MovhvEmF5y_iDUQiUyLAM5RC/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}