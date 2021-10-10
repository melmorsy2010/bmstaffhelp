import 'package:bmstaffhelp/2.dart';
import 'package:bmstaffhelp/carloanoffer/Carloan.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:bmstaffhelp/customeroffer.dart';
import 'package:bmstaffhelp/dollar%20offer.dart';
import 'package:bmstaffhelp/murabha.dart';
import 'package:bmstaffhelp/quarterloan.dart';
import 'package:bmstaffhelp/quarterloan/quarterloan.dart';
import 'package:bmstaffhelp/screen/login/test.dart';
import 'package:bmstaffhelp/securedloan%20offer/securedloan.dart';
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ADS/chatpot.dart';
import 'advancedintreset/advanced.dart';
import 'advancedintreset/showcase.dart';
import 'bmonilne/bm_online.dart';
import 'bmonilne/codes.dart';
import 'bmonilne/help.dart';
import 'carloanoffer/carloan2.dart';
import 'carloanoffer/chatbot.dart';
import 'creditcardoffers/mainoffer.dart';
import 'file:///C:/Users/melmorsy/IdeaProjects/bmstaffhelp/lib/tabbar%20credit/tabbar%20credit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'creditcardoffers/visaplatinuium.dart';
import 'creditcardoffers/world.dart';
import 'creditcardoffers/titanuim.dart';
import 'creditcardoffers/visagold.dart';
import 'creditcardoffers/worldelitte.dart';
import 'package:bmstaffhelp/response codes.dart';
import 'durablegoods.dart';
import 'package:bmstaffhelp/loancalc2.dart';
import 'package:bmstaffhelp/platinium/plat.dart';
import 'package:bmstaffhelp/products.dart';
import 'package:bmstaffhelp/screenshot.dart';
import 'package:bmstaffhelp/world/world.dart';
import 'package:bmstaffhelp/worldelite/eworld.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmstaffhelp/calc.dart';
import 'package:bmstaffhelp/classic/classic.dart';
import 'package:bmstaffhelp/drobdownlist.dart';
import 'package:bmstaffhelp/gold/gold.dart';
import 'package:bmstaffhelp/home.dart';
import 'package:bmstaffhelp/programs/eftrady.dart';
import 'package:bmstaffhelp/programs/employees.dart';
import 'package:bmstaffhelp/programs/preapproved.dart';
import 'package:bmstaffhelp/programs/proffesioal.dart';
import 'package:bmstaffhelp/tit/tit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'fooooorm.dart';
import 'insuranceoffer.dart';
import 'loaaan.dart';
import 'package:bmstaffhelp/applications.dart';
import 'package:bmstaffhelp/tabbar credit/test.dart';
import 'murabha2.dart';
import 'newcashloans/advanceinterest.dart';
import 'newcashloans/qr.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:store_redirect/store_redirect.dart';

void main() {
  //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



//change notification bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //set global text theme as fira sans

      ),
      home: Homepage(),
    );
  }
}

class MyHomePage extends StatefulWidget with NavigationStates{





  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();



}

class _MyHomePageState extends State<MyHomePage> {

  final _dialog = RatingDialog(
    // your app's name?
    title: 'Rate Us On Play Store',
    // encourage your user to leave a high rating?
    message:
    'Select Number of Stars 1 - 5 to Rate This App',
    // your app's logo?
    image: const FlutterLogo(size: 60),
    submitButton: 'Submit',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');
      // TODO: add your own logic
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        //go to app store
        StoreRedirect.redirect(androidAppId: 'com.boss.bmstaffhelp',);
      }
    },
  );


  @override

  Widget build(BuildContext context) {
    Widget imageCursoal = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shroot2()));
              },
              child: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage(
      'assets/cco.png'),
      fit: BoxFit.fill,
    ),
          ))),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homee()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/loansoffer.png'),
                      fit: BoxFit.fill,
                    ),
                  ))),
          AssetImage("assets/bank2.jpg"),
          AssetImage("assets/bank4.jpg"),
          AssetImage("assets/bank3.jpg"),

        ],

        autoplay: true,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 2000),
dotSize:6,
        indicatorBgPadding: 4,
      ),
    );



    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 16, top: 54, right: 16,),
        child: Stack(
          alignment: Alignment.topRight,

          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _greetings(),

                  ],
                ),
                SizedBox(height: 24),

                imageCursoal,

                SizedBox(height: 10),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Car Loan OFFER",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.car,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 210,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>advancedintrestt()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("interest in advance 11%",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.moneyBill,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 210,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentGenerator2()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Quarter Loan Calculator",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.calculator,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 210,
                            height: 140,
                          ),
                        ),
                      ),


                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
    //payment generator
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentGenerator()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" Monthly Loan Calculator",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.calculator,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 210,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Longvalue()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                            child: Container(
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Top Value",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                  ),
                                  SizedBox(height: 10,),
                                  Icon(FontAwesomeIcons.arrowAltCircleUp,size: 80,color: Colors.white),
                                ],
                              ),

                              width: 150,
                              height: 140,
                            ),
                          ),
                        ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Customeroffer()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                            child: Container(
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Customer Offer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                  ),
                                  SizedBox(height: 10,),
                                  Icon(FontAwesomeIcons.gift,size: 80,color: Colors.white),
                                ],
                              ),

                              width: 150,
                              height: 140,
                            ),
                          ),
                        ),

                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Customeroffer2()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                            child: Container(
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Closing CD",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                  ),
                                  SizedBox(height: 10,),
                                  Icon(FontAwesomeIcons.moneyCheck,size: 80,color: Colors.white),
                                ],
                              ),

                              width: 150,
                              height: 140,
                            ),
                          ),
                        ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CC()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Credit Card",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.creditCard,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 150,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Customeroffer3()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" USD OFFER",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.dollarSign,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 150,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Customeroffer5()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" BANCA & LOAN OFFER",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.handHoldingHeart,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>creditcardinstallment()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Credit Card Installment",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.creditCard,size: 80,color: Colors.white),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),


                    ],
                  ),
                ),
                SizedBox(height: 10),

                _title("Credit Card Offers"),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectionScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("BM ONLINE GUIDE ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),

                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 310,
                            height: 45,
                          ),
                        ),
                      ),



                      SizedBox(width: 5,),




                    ],
                  ),
                ),
                SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shroot2()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Credit Card Offers ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),

                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 310,
                            height: 45,
                          ),
                        ),
                      ),



                      SizedBox(width: 5,),




                    ],
                  ),
                ),
                SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homee()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Unsecured Cash Loans ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,)),


                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 310,
                            height: 45,
                          ),
                        ),
                      ),



                      SizedBox(width: 5,),




                    ],
                  ),
                ),

                SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>securedoffer()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Secured Loan Offer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.start,)),


                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 310,
                            height: 45,
                          ),
                        ),
                      ),



                      SizedBox(width: 5,),




                    ],
                  ),
                ),
                SizedBox(height: 10,),

                _title('Credit Card Types'),

                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Classiccard())
                        );
                      },
                      child: Container(

                        height: MediaQuery.of(context).size.width * 0.35,
                        width: MediaQuery.of(context).size.width * 0.26,
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

                                  image: AssetImage('assets/clas.jpg'),),

                                shape: BoxShape.rectangle,

                              ),


                            ),
                            SizedBox(height: 8),
                            Text(
                              "Classic",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> Goldcard())
                        );
                      },
                      child: Container(

                        height: MediaQuery.of(context).size.width * 0.35,
                        width: MediaQuery.of(context).size.width * 0.26,
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

                                  image: AssetImage('assets/classic.jpg'),),

                                shape: BoxShape.rectangle,

                              ),


                            ),
                            SizedBox(height: 8),
                            Text(
                              "Gold",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> Titcard())
                        );
                      },
                      child: Container(

                        height: MediaQuery.of(context).size.width * 0.35,
                        width: MediaQuery.of(context).size.width * 0.26,
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

                                  image: AssetImage('assets/TT.jpg'),),

                                shape: BoxShape.rectangle,

                              ),


                            ),
                            SizedBox(height: 8),
                            Text(
                              "Titnaium",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> Platcard())
                        );
                      },
            child: Container(

              height: MediaQuery.of(context).size.width * 0.35,
              width: MediaQuery.of(context).size.width * 0.26,
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

                        image: AssetImage('assets/pm.jpg'),),

                      shape: BoxShape.rectangle,

                    ),


                  ),
                  SizedBox(height: 8),
                  Text(
                    "Platinium",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),

            ),
      ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> Worldcard())
                        );
                      },
                      child: Container(

                        height: MediaQuery.of(context).size.width * 0.35,
                        width: MediaQuery.of(context).size.width * 0.26,
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

                                  image: AssetImage('assets/we.jpg'),),

                                shape: BoxShape.rectangle,

                              ),


                            ),
                            SizedBox(height: 8),
                            Text(
                              "World",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Eworldcard()));
                      },
                      child: Container(

                        height: MediaQuery.of(context).size.width * 0.35,
                        width: MediaQuery.of(context).size.width * 0.26,
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

                                  image: AssetImage('assets/w.jpg'),),

                                shape: BoxShape.rectangle,

                              ),


                            ),
                            SizedBox(height: 8),
                            Text(
                              "World Elite",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),

                      ),
                    ),



                  ],
                ),
                SizedBox(height: 12),
                _title('Unsecured Credit Card programs'),
                 SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> RecomendedPage()));
                        },
                        child: Container(
                          child: _promotionCard('دخل افتراضى ', 'assets/profit.png'),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Employee()));
                        },
                        child: Container(
                          child: _promotionCard('موظفي القطاع العام والخاص ', 'assets/profit.png'),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Professional()));
                        },
                        child: Container(
                          child: _promotionCard('اصحاب الانشطه التجاريه والصناعيه ', 'assets/profit.png'),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Preapproved()));
                        },
                        child: Container(
                          child: _promotionCard('PRE APPROVED', 'assets/profit.png'),
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),

                SizedBox(height: 20),

              ],
            ),

          ],
        ),
      ),

    );

  }

  _promotionCard(String title, String assetUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 110,
          width: MediaQuery.of(context).size.width / 2 - 30,
          decoration: BoxDecoration(
              color: Color(0XFFDDFF3FF),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ]),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(assetUrl, height: 80, fit: BoxFit.fitHeight),
          ),
        ),
        SizedBox(height: 12),
        Text(

          title,
          style: TextStyle(

            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          textAlign: TextAlign.right,
        )
      ],
    );
  }

  _menuItem(String title,  String image, ) {
    return GestureDetector(
      onTap: (){
        print("ok");
      },
      child: Container(

        height: MediaQuery.of(context).size.width * 0.35,
        width: MediaQuery.of(context).size.width * 0.26,
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

  image: AssetImage(image),),

                shape: BoxShape.rectangle,

              ),


            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        
      ),
    );
  }

  _title(String title) {
    return Text(
      title,style: GoogleFonts.lato(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),

    );
  }

  _introCard() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('assets/misr.jpg'),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              offset: Offset(0, 3),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'BM Credit Cards',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Welcome To the World of Banque Misr Credit cards',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                FontAwesomeIcons.longArrowAltRight,
                  size: 36, color: Colors.white,
              ),

            ],
          )
        ],
      ),
    );
  }

  _greetings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'HELLO BM STAFF !',
                style: GoogleFonts.openSans(color: Colors.black,fontSize: 20),
              ),
              SizedBox(width: 20,),
              FloatingActionButton(
                mini: false,
                backgroundColor: LightColors.kRed,
                child: Center(child: new Text("ارسال مقترح",style: GoogleFonts.cairo(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),textAlign: TextAlign.center,)),
                onPressed: () =>  _launchURL2(),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Mohamed Nazmy',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 30,),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: LightColors.kRed),
              onPressed: (){

                // load dialog to show it
                showDialog(
                  context: context,
                  builder: (context) => _dialog,
                );
              },child: Text('قيم التطبيق',style: GoogleFonts.cairo(fontWeight: FontWeight.bold),),
            ),
            SizedBox(width: 30,),
            GestureDetector(onTap: (){
              Share.share('check out this beautiful app  https://play.google.com/store/apps/details?id=com.boss.bmstaffhelp');
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Share App",style: GoogleFonts.aladin(fontSize: 25,color: LightColors.kRed),),
                  IconButton(icon:Icon(FontAwesomeIcons.shareSquare,color: Colors.red,),

                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }


  Padding buildControl({Icon icon, Function onPressedFunction, String label}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 8, right: 10, top: 10),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
            color: Color(0XFF802b40), borderRadius: BorderRadius.circular(20)),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 8),
              child: GestureDetector(onTap: onPressedFunction, child: icon),
            ),
            // IconButton(icon: icon, onPressed: onPressedFunction),
            GestureDetector(onTap: onPressedFunction,child: Text(label))
          ],
        ),
      ),
    );
  }
}
  _launchURL2() async {
    const url =
        'https://wa.me/201011937796?text=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}