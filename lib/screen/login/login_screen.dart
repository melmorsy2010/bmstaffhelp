import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../lock.dart';
import 'animation.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<LoginScreen> {
  double _height;
  double _width;
  final TextEditingController _passcode = TextEditingController();
  _userSetPassCode(String passcode)  {

    // final box = GetStorage();
    //
    // box.write('passcode', passcode);

    print('_userSetPassCode :  $_passcode .');


  }
  _userGetPassCode()  {


    final box = GetStorage();
    var  passcode =  box.read('passcode');

    print('1- User Set passcode :  $_passcode .');
    return passcode;

  }
  @override

  void initState() {
    // ignore: unnecessary_statements
    _loadUserEmailPassword();
    _loadUserEmailPassword2();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    var passcode = _userGetPassCode();


    print('2-  $_passcode');

    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: AppBar(
      //   title: Text("Profile"),
      // ),
      body: _body(),
    );
  }
  bool _isChecked = false;
  bool _isChecked2 = false;

  Widget _body() {
    return new Container(
      child: new ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/background.png'),
                                fit: BoxFit.fill)),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 30,
                              width: 80,
                              height: 200,
                              child: FadeAnimation(
                                  1,
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/light-1.png'))),
                                  )),
                            ),
                            Positioned(
                              left: 140,
                              width: 80,
                              height: 150,
                              child: FadeAnimation(
                                  1.3,
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/light-2.png'))),
                                  )),
                            ),
                            Positioned(
                              right: 40,
                              top: 40,
                              width: 80,
                              height: 150,
                              child: FadeAnimation(
                                  1.5,
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/clock.png'))),
                                  )),
                            ),
                            Positioned(
                              child: FadeAnimation(
                                  1.6,
                                  Container(
                                    margin: EdgeInsets.only(top: 50),
                                    child: Center(
                                      child: Text(
                                        "BM STAFF HELP!",
                                        style: GoogleFonts.openSans(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          children: <Widget>[
                            FadeAnimation(
                                4,
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                143, 148, 251, .2),
                                            blurRadius: 20.0,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[500]))),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.black),
                                          controller: _passcode,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter password",
                                              hintStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
SizedBox(height: 10,),
                        FadeAnimation(
                          3,
                            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                  SizedBox(
                                      height: 24.0,
                                      width: 24.0,
                                      child: Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: Color(0xff00C8E8) // Your color
                                        ),
                                        child: Checkbox(
                                            activeColor: Color(0xff00C8E8),
                                            value: _isChecked,
                                            onChanged: _handleRemeberme
                                        ),
                                      )),
                                  SizedBox(width: 10.0),
                                  Text("Remember me ",
                                      style: GoogleFonts.openSans(color: Color(0xff646464),fontWeight: FontWeight.bold,
                                      ))
                                ])),
                            FadeAnimation(
                                3,Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                              SizedBox(
                                  height: 24.0,
                                  width: 24.0,
                                  child: Theme(
                                    data: ThemeData(
                                        unselectedWidgetColor: Color(0xff00C8E8) // Your color
                                    ),
                                    child: Checkbox(
                                        activeColor: Color(0xff00C8E8),
                                        value: _isChecked2,
                                        onChanged: _handleRemeberme2
                                    ),
                                  )),
                              SizedBox(width: 10.0),
                              Text("تجاوز هذه الصفحه مستقبلا ",
                                  style: GoogleFonts.openSans(color: Color(0xff646464),fontWeight: FontWeight.bold,
                                  ))
                            ])),

                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                                3.5,
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ])),
                                  child: RaisedButton(
                                    color: Color.fromRGBO(143, 148, 251, 1),
                                    onPressed: () {
                                      if (_passcode.text == null || _passcode.text != "36900" ) {
                                        print('3- inputString is :  $_passcode .');

                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Center(
                                                    child: Text(
                                                  "كلمه سر غير صحيحه ",
                                                  textAlign: TextAlign.center,
                                                )),
                                              );
                                            });
                                      // ignore: unrelated_type_equality_checks
                                      } else if (_passcode.text == "36900") {
                                        _userSetPassCode(_passcode.text);

                                        Navigator.pushReplacement(
                                            context, MaterialPageRoute(builder: (context) => SideBarLayout()));
                                      }
                                    },
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                        FadeAnimation(
                          4, Text(
                              "This app is designed for BM Staff only,To get password click on send whatsapp message",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            FadeAnimation(
                                4,
                                Container(
                                  height: 50.0,
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromRGBO(86, 215, 188, 1),
                                  ),
                                  child: RaisedButton.icon(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    onPressed: _launchURL,
                                    color: Color.fromRGBO(86, 215, 188, 1),
                                    label: Text(
                                      'Send whatsapp message',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    icon: Icon(
                                      FontAwesomeIcons.whatsapp,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 70,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ],
      ),
    );
  }
  void _handleRemeberme(bool value) {
    _isChecked = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me", value);
        prefs.setString('password', _passcode.text);
      },
    );
    setState(() {
      _isChecked = value;
    });
  }
  void _handleRemeberme2(bool value) {
    _isChecked2 = value;
    SharedPreferences.getInstance().then(
          (prefs) {
        prefs.setBool("remember_me2", value);
      },
    );
    setState(() {
      _isChecked2 = value;
    });
  }

  void _loadUserEmailPassword() async {
    print("Load Email");

    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;
      print(_remeberMe);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        _passcode.text = _password ?? "";
      }
    } catch (e)
    {
      print(e);
    }
  }
  void _loadUserEmailPassword2() async {
    print("Load Email");

    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe2 = _prefs.getBool("remember_me2") ?? false;
      print(_remeberMe2);
      print(_password);
      if (_remeberMe2&&_passcode.text == "36900") {
        setState(() {
          _isChecked2 = true;
        });
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SideBarLayout()));
      }
    } catch (e)
    {
      print(e);
    }
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
