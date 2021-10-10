import 'package:admob_flutter/admob_flutter.dart';
import 'package:bmstaffhelp/ADS/adsmanager.dart';
import 'package:bmstaffhelp/creditcardoffers/top_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_to_word_arabic/number_to_word_arabic.dart';
import 'package:url_launcher/url_launcher.dart';

import 'light_colors.dart';
import 'new offers.dart';
import 'package:bmstaffhelp/creditcardoffers/newoffers/mastertitanium.dart';
import 'package:bmstaffhelp/creditcardoffers/newoffers/visaplatinuim.dart';

import 'newoffers/world.dart';
import 'newoffers/worldelitenew.dart';

class shroot2 extends StatefulWidget {
  @override
  _shroot2State createState() => _shroot2State();
}

class _shroot2State extends State<shroot2> {
  String mohamed = "mohamed";

  double iconSize = 40;

  String dropdownvalue2 = ' Gold ';
  var items2 = [
    ' Gold ',
    'Mastercard Titnaium',
    'Visa Platinium',
    'Mastercard world',
    'Mastercard w Elite'
  ];

  String dropdownvalue = 'شهاده';
  var items = [
    'شهاده',
    'حساب',
    'وديعه',
  ];

  final TextEditingController _name = TextEditingController();
  final TextEditingController _limit = TextEditingController();
  final TextEditingController _staffname = TextEditingController();
  final TextEditingController _staffnumb = TextEditingController();

  String _cd= "";
  String _cd2= "";
  String _account= "";
  String _account2= "";
  final _nativeAdController = NativeAdmobController();

  AdmobInterstitial interstitialAd;
  @override
  void initState() {
    super.initState();

    //Ads
    interstitialAd = AdmobInterstitial(
      adUnitId: AdsManager.interstitialAdUnitId,
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();
      },
    );

    interstitialAd.load();
    _nativeAdController.reloadAd(forceRefresh: true);
  }
  @override
  void dispose() {
    interstitialAd.dispose();
    _nativeAdController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: LightColors.kLightYellow2,
      appBar: AppBar(
        backgroundColor: LightColors.kDarkYellow,
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
              child: Text(
            'Credit Cards Offers ',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: (SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    color: LightColors.kDarkBlue,
                    width: 170,
                    height: 40,
                    child: Text(
                      "اختار نوع الكارت",
                      style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: 250,
                    height: 50,
                    child: Center(
                      child: DropdownButton(
                        dropdownColor: LightColors.kLightGreen,
                        itemHeight: 150.0,
                        focusColor: Colors.black,
                        isExpanded: false,
                        isDense: false,
                        value: dropdownvalue2,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                        items: items2.map((String items2) {
                          return DropdownMenuItem(
                              value: items2,
                              child: Text(
                                items2,
                                style: GoogleFonts.cairo(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                              ));
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownvalue2 = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(children: [
                if (dropdownvalue2.contains("Gold")) ...{
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 50,
                        color: LightColors.kGreen,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "قيمة الكارت تتراوح من 3000 حتى 9999",
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                } else if (dropdownvalue2.contains("Titnaium")) ...{
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 50,
                        color: LightColors.kGreen,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "قيمة الكارت تتراوح من 10000 حتى 24999",
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                } else if (dropdownvalue2.contains("Platinium")) ...{
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 50,
                        color: LightColors.kGreen,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "قيمة الكارت تتراوح من 25000 حتى 99999",
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                } else if (dropdownvalue2.contains("world")) ...{
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 50,
                        color: LightColors.kGreen,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "قيمة الكارت تتراوح من 100000 حتى 299999",
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                } else if (dropdownvalue2.contains("Elite")) ...{
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 50,
                        color: LightColors.kGreen,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "قيمة الكارت تتراوح من 300000 حتى 799999",
                              style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                }
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 220,
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            color: LightColors.kDarkBlue,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hoverColor: Colors.red,
                            hintText: "ادخل اسم العميل",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            fillColor: Colors.grey[200]),
                        keyboardType: TextInputType.visiblePassword,
                        controller: _name,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 10),
                    child: Container(
                      color: LightColors.kDarkBlue,
                      width: 100,
                      height: 40,
                      child: Text(
                        "اسم العميل",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 150,
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            color: LightColors.kDarkBlue,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hoverColor: Colors.red,
                            hintText: "الحد الائتماني للكارت",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            fillColor: Colors.grey[200]),
                        keyboardType: TextInputType.number,
                        controller: _limit,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 10),
                    child: Container(
                      color: LightColors.kDarkBlue,
                      width: 150,
                      height: 40,
                      child: Text(
                        "الحد الائتمانى للكارت",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: 150,
                    height: 50,
                    child: Center(
                      child: DropdownButton(
                        dropdownColor: LightColors.kLightGreen,
                        itemHeight: 150.0,
                        focusColor: Colors.black,
                        isExpanded: false,
                        isDense: false,
                        value: dropdownvalue,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: GoogleFonts.cairo(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                              ));
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 10),
                    child: Container(
                      color: LightColors.kDarkBlue,
                      width: 150,
                      height: 40,
                      child: Text(
                        "نوع الضمانه",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 220,
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            color: LightColors.kDarkBlue,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hoverColor: Colors.red,
                            hintText: "ادخل اسم الموظف",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            fillColor: Colors.grey[200]),
                        keyboardType: TextInputType.visiblePassword,
                        controller: _staffname,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 10),
                    child: Container(
                      color: LightColors.kDarkBlue,
                      width: 100,
                      height: 40,
                      child: Text(
                        "اسم الموظف",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 170,
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            color: LightColors.kDarkBlue,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hoverColor: Colors.red,
                            hintText: "ادخل رقم الهاتف",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                            fillColor: Colors.grey[200]),
                        keyboardType: TextInputType.number,
                        controller: _staffnumb,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 10),
                    child: Container(
                      color: LightColors.kDarkBlue,
                      width: 150,
                      height: 40,
                      child: Text(
                        "رقم تليفون الموظف",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: RaisedButton(
                    color: LightColors.kRed,
                    disabledTextColor: LightColors.kGreen,
                    disabledColor: LightColors.kGreen,
                    focusColor: LightColors.kGreen,
                    hoverColor: LightColors.kGreen,
                    splashColor: LightColors.kGreen,
                    elevation: 20000,
                    hoverElevation: 1,
                    animationDuration: Duration(milliseconds: 400),
                    child: Text("اضغط هنا لعرض التقرير ",
                        style: GoogleFonts.cairo(
                            color: LightColors.kLightYellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    textColor: Colors.white,
                    focusElevation: 2.0,
                    onPressed: () {
                      interstitialAd.show();
                      if (dropdownvalue2.contains(' Gold ')&&int.parse(_limit.text) > 9999) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title:
                                Center(child: Text("حد الكارت الفيزا جولد يتراوح من 3000 حتى 9999جم ",textAlign: TextAlign.center,)),
                              );
                            });
                      } else if (dropdownvalue2.contains(' Gold ')&&int.parse(_limit.text) < 3000) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title:
                                Center(child: Text("حد الكارت الفيزا جولد يتراوح من 3000 حتى 9999جم ",textAlign: TextAlign.center,)),
                              );
                            });
                      }

                      else if (dropdownvalue2.contains("Mastercard Titnaium")&&int.parse(_limit.text) > 24999) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت تيتانيوم يتراوح من 10000 الى 24999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }  else if (dropdownvalue2.contains("Mastercard Titnaium")&&int.parse(_limit.text) < 10000) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت تيتانيوم يتراوح من 10000 الى 24999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }

                      else if (dropdownvalue2.contains("Visa")&&int.parse(_limit.text) > 99999) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت البلاتنيوم يتراوح من 25000 الى 99999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }
                      else if (dropdownvalue2.contains("Visa")&&int.parse(_limit.text) < 25000) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت البلاتنيوم يتراوح من 25000 الى 99999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }
                      else if (dropdownvalue2.contains("world")&&int.parse(_limit.text) > 299999) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت world يتراوح من 100000 الى 299999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }
                      else if (dropdownvalue2.contains("world")&&int.parse(_limit.text) < 100000) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت world يتراوح من 100000 الى 299999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }
                      else if (dropdownvalue2.contains("Elite")&&int.parse(_limit.text) > 799999) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت world elite يتراوح من 300000 الى 799999 جم    ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }
                      else if (dropdownvalue2.contains("Elite")&&int.parse(_limit.text) < 300000) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                      " حد كارت world elite يتراوح من 300000 الى 799999 جم     ",textAlign: TextAlign.center,
                                      style: TextStyle(),
                                      textDirection: TextDirection.rtl,
                                    )),
                              );
                            });
                      }

                      else if (int.parse(_limit.text) >= 0) {
                        _handleexpect();
                      } }),

              ),
              longResultsWidget3(_cd),

            ],
          ),
        )),
      ),
    );
  }

  void _handleexpect() {
    double limit = double.parse(_limit.text);

double gurantee1 = (limit*125/100);
    double gurantee2 = (limit*112/100);

int result = (gurantee1/1000).round()*1000;
    int result2 = (gurantee2/100).round()*100;
    double precent1 = limit/result*100;
    int precent = (precent1/10).round()*10;

    double precent2 = limit/result2*100;
    int precentt = (precent2/10).round()*10;


    _cd = result.toString();
    _cd2 = precent.toString();
_account = result2.toString();
    _account2 = precentt.toString();

    print(precentt);


    setState(() {});
  }


  Widget longResultsWidget3(longResult) {
    bool canShow = false;
    String _cd = longResult;

    if (_cd.length > 0) {
      canShow = true;
    }
    return Container(
      decoration: BoxDecoration(),
      margin: EdgeInsets.only(top: 5.0),
      child: canShow
          ? Column(children: [
SizedBox(height: 10,),

        if (dropdownvalue2.contains("Gold"))...{Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Container(
                  width: 120,
                  color: LightColors.kGreen,
                  child: Text(
                    "Visa Gold",
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 8),
              child: Text("نوع الكارت",
                  style: GoogleFonts.cairo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ],
        ),}
        else if (dropdownvalue2.contains("Titnaium"))...{
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Container(
                    width: 120,
                    color: LightColors.kGreen,
                    child: Text(
                      "ماستر كارد تيتانيوم",
                      style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 8),
                child: Text("نوع الكارت",
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),

        }
        else if (dropdownvalue2.contains("Visa"))...{
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                      width: 120,
                      color: LightColors.kGreen,
                      child: Text(
                        "فيزا بلاتينيوم",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 8),
                  child: Text("نوع الكارت",
                      style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ],
            ),

          }
          else if (dropdownvalue2.contains("world"))...{
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Container(
                        width: 120,
                        color: LightColors.kGreen,
                        child: Text(
                          "ماستر كارد وورلد",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 8),
                    child: Text("نوع الكارت",
                        style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ],
              ),

            }
            else if (dropdownvalue2.contains("Elite"))...{
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Container(
                          width: 120,
                          color: LightColors.kGreen,
                          child: Text(
                            "ماستر كارد وورلد ايليت",
                            style: GoogleFonts.cairo(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 8),
                      child: Text("نوع الكارت",
                          style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ],
                ),

              },
        Divider(color: Colors.grey,),

        if (dropdownvalue.contains("شهاده"))...{Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Container(
                  width: 120,
                  color: LightColors.kGreen,
                  child: Text(
                    _cd,
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 8),
              child: Text("قيمه الضمانه",
                  style: GoogleFonts.cairo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ],
        ),}else if (dropdownvalue.contains("حساب")|| dropdownvalue.contains("وديعه"))...{
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Container(
                    width: 120,
                    color: LightColors.kGreen,
                    child: Text(
                      _account,
                      style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 8),
                child: Text("قيمه الضمانه",
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),

        },

Divider(color: Colors.grey,),
        if (dropdownvalue.contains("شهاده"))...{Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Container(
                  width: 120,
                  color: LightColors.kGreen,
                  child: Text(
                    "% $_cd2",
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 8),
              child: Text("نسبة التسليف",
                  style: GoogleFonts.cairo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ],
        ),}else if (dropdownvalue.contains("حساب")|| dropdownvalue.contains("وديعه"))...{
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Container(
                    width: 120,
                    color: LightColors.kGreen,
                    child: Text(
                      "% $_account2",
                      style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 8),
                child: Text("نسبة التسليف",
                    style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),

        },

        if (dropdownvalue2.contains("Gold")) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  return generateAndPrintArabicPdf(details:_name.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _limit.text,
                      items:[ _limit.text, 'الحد الإتمانى للكارت' ],itemss:[  if(dropdownvalue.contains("شهاده"))...{" $_cdجم"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" $_accountجم"} ],itemsss:[  if(dropdownvalue.contains("شهاده"))...{" % $_cd2"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" % $_account2"}, 'نسبه التسليف من قيمه الضمانه' ] ,itemsss4:[ "200 جم", 'مصاريف إصدار الكارت' ],itemsss5:[ "100 جم", 'مصاريف تجديد الكارت سنويا' ],itemsss6:[ "20000  جم او الحد الائتمانى ايهما اقل يوميا", 'حد السحب النقدى' ],itemsss7:[ "فى حدود الحد الائتمانى", 'حد الشراء من داخل او خارج مصر' ],itemsss8:[ "بطاقتين", 'البطاقات الإضافيه المجانيه' ] );
                },
                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        }else if (dropdownvalue2.contains("Mastercard Titnaium")&&int.parse(_limit.text) < 24999&&int.parse(_limit.text) > 9999) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  return generateAndPrintArabicPdf2(details:_name.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _limit.text,
                      items:[ _limit.text, 'الحد الإتمانى للكارت' ],itemss:[ if(dropdownvalue.contains("شهاده"))...{" $_cdجم"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" $_accountجم"}, 'قيمة الضمانه' ],itemsss:[ if(dropdownvalue.contains("شهاده"))...{" % $_cd2"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" % $_account2"}, 'نسبه التسليف من قيمه الضمانه' ] ,itemsss4:[ "250 جم", 'مصاريف إصدار الكارت' ],itemsss5:[ "150 جم", 'مصاريف تجديد الكارت سنويا' ],itemsss6:[ "20000  جم او الحد الائتمانى ايهما اقل يوميا", 'حد السحب النقدى' ],itemsss7:[ "فى حدود الحد الائتمانى", 'حد الشراء من داخل او خارج مصر' ],itemsss8:[ "3 بطاقات", 'البطاقات الإضافيه المجانيه' ] ,itemsss9:[ "3 بطاقات", 'البطاقات الإضافيه المجانيه' ] );
                },
                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        }else if (dropdownvalue2.contains("Visa Platinium")&&int.parse(_limit.text) < 100000&&int.parse(_limit.text) > 24999) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  return generateAndPrintArabicPdf3(details:_name.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _limit.text,
                      items:[ _limit.text, 'الحد الإتمانى للكارت' ],itemss:[ if(dropdownvalue.contains("شهاده"))...{" $_cdجم"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" $_accountجم"}, 'قيمة الضمانه' ],itemsss:[ if(dropdownvalue.contains("شهاده"))...{" % $_cd2"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" % $_account2"}, 'نسبه التسليف من قيمه الضمانه' ] ,itemsss4:[ "400 جم", 'مصاريف إصدار الكارت' ],itemsss5:[ "300 جم", 'مصاريف تجديد الكارت سنويا' ],itemsss6:[ "20000  جم او الحد الائتمانى ايهما اقل يوميا", 'حد السحب النقدى' ],itemsss7:[ "فى حدود الحد الائتمانى", 'حد الشراء من داخل او خارج مصر' ],itemsss8:[ "4 بطاقات", 'البطاقات الإضافيه المجانيه' ] ,itemsss9:[ "3 بطاقات", 'البطاقات الإضافيه المجانيه' ] );
                },
                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        }else if (dropdownvalue2.contains("world")&&int.parse(_limit.text) < 300000&&int.parse(_limit.text) > 99999) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  return generateAndPrintArabicPdf4(details:_name.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _limit.text,
                      items:[ _limit.text, 'الحد الإتمانى للكارت' ],itemss:[ if(dropdownvalue.contains("شهاده"))...{" $_cdجم"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" $_accountجم"}, 'قيمة الضمانه' ],itemsss:[ if(dropdownvalue.contains("شهاده"))...{" % $_cd2"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" % $_account2"}, 'نسبه التسليف من قيمه الضمانه' ] ,itemsss4:[ "1500 جم", 'مصاريف إصدار الكارت' ],itemsss5:[ "1500 جم", 'مصاريف تجديد الكارت سنويا' ],itemsss6:[ "20000  جم او الحد الائتمانى ايهما اقل يوميا", 'حد السحب النقدى' ],itemsss7:[ "فى حدود الحد الائتمانى", 'حد الشراء من داخل او خارج مصر' ],itemsss8:[ "بدون حد أقصى", 'البطاقات الإضافيه المجانيه' ] ,itemsss9:[ "3 بطاقات", 'البطاقات الإضافيه المجانيه' ] );
                },
                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        }else if (dropdownvalue2.contains("Elite")&&int.parse(_limit.text) < 800000&&int.parse(_limit.text) > 299999) ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  return generateAndPrintArabicPdf5(details:_name.text,details2:_staffname.text,details3:_staffnumb.text,bookNum: "-- صوره بطاقه الرقم القومى للزوج والزوجه",replay: "-- إيصال مرافق حديث على عنوان الاقامه الحالى بحد اقصى 3 شهور  كهرباء أو غاز أو مياه ",date: " --شهاده بالدخل من جهه العمل صلاحيتها شهرين على الاكثر وفى حاله وجود دخول غير دوريه \n او ارياح يتم تقديم ما يثبت ذلك أو ثلاث شرائط راتب حديثهاصل أو صوره معتمده\n  أو كشف حساب بنكى يوضح تحويل الراتب لمده 3 أشهر سابقه",subject: _limit.text,
                      items:[ _limit.text, 'الحد الإتمانى للكارت' ],itemss:[ if(dropdownvalue.contains("شهاده"))...{" $_cdجم"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" $_accountجم"}, 'قيمة الضمانه' ],itemsss:[ if(dropdownvalue.contains("شهاده"))...{" % $_cd2"}else if(dropdownvalue.contains("حساب")||(dropdownvalue.contains("وديعه")))...{" % $_account2"}, 'نسبه التسليف من قيمه الضمانه' ] ,itemsss4:[ "2000 جم", 'مصاريف إصدار الكارت' ],itemsss5:[ "2000 جم", 'مصاريف تجديد الكارت سنويا' ],itemsss6:[ "20000  جم او الحد الائتمانى ايهما اقل يوميا", 'حد السحب النقدى' ],itemsss7:[ "فى حدود الحد الائتمانى", 'حد الشراء من داخل او خارج مصر' ],itemsss8:[ "بدون حد أقصى", 'البطاقات الإضافيه المجانيه' ] ,itemsss9:[ "3 بطاقات", 'البطاقات الإضافيه المجانيه' ] );
                },
                color: LightColors.kDarkBlue,
                child: Text(
                    'طباعه التقرير',
                    style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
        },

        SizedBox(height: 100,),




      ]

      )
          : Container(),
    );
  }
}
_launchURL() async {
  const url = 'https://google.com.br';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }}