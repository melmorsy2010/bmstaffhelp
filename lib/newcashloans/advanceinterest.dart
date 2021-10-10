import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:bmstaffhelp/newcashloans/cashh.dart';
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


  class Advance extends StatefulWidget with NavigationStates{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Advance> {
  final TextEditingController _Cdamount = TextEditingController();
String R2 = "" ;
  String dropdownvalue2 = ' تعهد جهة العمل ';
  var items2 = [
    ' تعهد جهة العمل ',
    ' إثبات دخل ',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: [


          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: Text(
                          "ًصرف العائد مقدما ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(fontSize: 24,color: Constants.primaryTextColor,   fontWeight: FontWeight.w600,)
                        /* TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600,
                          color: Constants.primaryTextColor,
                        ),*/
                      ),
                    ),
                  ),
Divider(color: LightColors.kRed,thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 120,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: TextField(
                                style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.bold,
                                    color: LightColors.kDarkBlue,
                                    decoration: TextDecoration.none),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hoverColor: Colors.red,
                                    hintStyle: TextStyle(color: LightColors.kRed),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: LightColors.kRed),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: LightColors.kRed),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(0))),
                                    fillColor: Colors.grey[200]),
                                keyboardType: TextInputType.visiblePassword,
controller: _Cdamount,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, right: 5, left: 5),
                          child: Text("قيمة الشهادة  ",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                fontSize: 17,
                                color: Constants.primaryTextColor,
                                fontWeight: FontWeight.w600,
                              )
                            /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                          ),
                        )
                      ],
                    ),
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new RaisedButton(
                      onPressed: (){

                        _handleCalculation();
                      },
                      // tooltip: 'Increment',
                      child: new Text(

                        "Calculate",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: LightColors.kGreen,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                  // ignore: deprecated_member_use
Text(R2,style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _handleCalculation() {
    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods
    double P = double.parse(_Cdamount.text);

double R = (P*9/100)*3;
print(R);
R2=R.toStringAsFixed(0);

    setState(() {});
  }



}



class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);


}