import 'package:bmstaffhelp/loaaan.dart';
import 'package:bmstaffhelp/main.dart';
import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'lock.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class lock2 extends StatelessWidget {
  bool isNewUser = true;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),

      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        'MyHome': (context) {
          return SideBarLayout();
        },
      },
    );
  }

}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controller = TextEditingController();
  String inputString = "";
  bool _switchValue = true;
  String passcode = "";


  _userSetPassCode(String passcode)  {

    // final box = GetStorage();
    //
    // box.write('passcode', passcode);

    print('_userSetPassCode :  $passcode .');


  }
  _userGetPassCode()  {


    final box = GetStorage();
    var  passcode =  box.read('passcode');

    print('1- User Set passcode :  $passcode .');
    return passcode;

  }



  //
  // void initState() {
  //   super.initState();
  //   // asyncMethod();
  // }


  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 650.0 ? 600.0 : deviceWidth * 0.95;

    var passcode = _userGetPassCode();


    print('2-  $passcode');


    if(passcode == null || passcode != "36900" )
    {
      //hna la msh d5l al code abl keda

      print('3- inputString is :  $inputString .');

      if (inputString == "") {
        print('1');

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0XFF52dac6),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/mm.jpg",
                            scale: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 24.0,
                    ),
                    decoration: BoxDecoration(
                      color: Constants.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text("BM STAFF HELP !",
                                style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "This app is designed for BM Staff only,To get password click on send whatsapp message",
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 50.0,
                            width: 300.0,
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                "Log In",
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(86, 215, 188, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return
                                      AlertDialog(
                                        title: Text("Enter Password",style: TextStyle(color: Colors.white),),
                                        content: TextFormField(

                                          keyboardType: TextInputType.number,
                                          controller: _controller,style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(fillColor: Colors.blue),

                                        ),

                                        actions: <Widget>[
                                          TextButton(

                                              child: const Text('CANCEL',style: TextStyle(color: Colors.white)),
                                              onPressed: () {
                                                Navigator.of(context).pop();

                                              }),
                                          FlatButton(
                                            child: Text("OK",style: TextStyle(color: Colors.white)),
                                            onPressed: () {
                                              Navigator.pop(
                                                  context, _controller.text);
                                            },
                                          )
                                        ],
                                      );




                                  },
                                ).then((val) {
                                  setState(() {
                                    inputString = val;
                                  });
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 50.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(86, 215, 188, 1),
                            ),
                            child: RaisedButton.icon(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              onPressed: _launchURL,
                              color: Color.fromRGBO(86, 215, 188, 1),
                              label: Text(
                                'Send whatsapp message',
                                style: TextStyle(fontSize: 16,color: Colors.white),
                              ),
                              icon: Icon(FontAwesomeIcons.whatsapp,color: Colors.white,),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Spacer(),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      else if (inputString != "36900") {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Sorry you have enter wrong code  '),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  child: Text("Try Again"),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Enter Correct Password"),
                          content: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _controller,
                          ),
                          actions: <Widget>[
                            FlatButton(
                                child: const Text('CANCEL'),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context, _controller.text);
                              },
                            )
                          ],
                        );
                      },
                    ).then((val) {
                      setState(() {
                        inputString = val;
                      });
                    });
                  },
                ),
              ],
            ),
          ),
        );
      }
      else if (inputString == "36900") {
        sCode();

        //hna al code s7 hib2a keda tmam
        _userSetPassCode("36900");
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
        );
      }
      else {
        print('else');

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0XFF52dac6),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/mm.jpg",
                            scale: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 24.0,
                    ),
                    decoration: BoxDecoration(
                      color: Constants.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text("BM STAFF HELP !",
                                style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "This app is designed for BM Staff only,To get password click on send whatsapp message",
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 50.0,
                            width: 300.0,
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                "Log In",
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(86, 215, 188, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return
                                      AlertDialog(
                                        title: Text("Enter Password",style: TextStyle(color: Colors.white),),
                                        content: TextFormField(

                                          keyboardType: TextInputType.number,
                                          controller: _controller,style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(fillColor: Colors.blue),

                                        ),

                                        actions: <Widget>[
                                          TextButton(

                                              child: const Text('CANCEL',style: TextStyle(color: Colors.white)),
                                              onPressed: () {
                                                Navigator.of(context).pop();

                                              }),
                                          FlatButton(
                                            child: Text("OK",style: TextStyle(color: Colors.white)),
                                            onPressed: () {
                                              Navigator.pop(
                                                  context, _controller.text);
                                            },
                                          )
                                        ],
                                      );




                                  },
                                ).then((val) {
                                  setState(() {
                                    inputString = val;
                                  });
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),

                          SizedBox(
                            height: 20.0,
                          ),
                          Spacer(),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        );
      }


    }
    else {
      //hna  tmam d5l el code abl keda
      print('4- Pass code is :  $inputString .');

      sCode();
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      );
    }


  }

  void sCode()  {
    // DO SOME STUFF HERE
    Future.delayed(Duration.zero, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SideBarLayout()));
    });
  }

}

_launchURL() async {
  const url =
      'https://wa.me/201011937796?text=*HI mohamed* how are you? please i need the password for your app my BM email is        @banquemisr.com ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'BM STAFF HELP !',
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AppSlogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'HELP MADE EASY',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

class Constants {
  static final Color primaryColor = Color.fromRGBO(86, 215, 188, 1);
  static final Color scaffoldBackgroundColor = Color.fromRGBO(245, 247, 249, 1);
}
