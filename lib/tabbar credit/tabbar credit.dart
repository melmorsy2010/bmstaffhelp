import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: creditcardinsta(),
    );
  }
}

class creditcardinsta extends StatefulWidget {
  @override
  _creditcardinstaState createState() => _creditcardinstaState();
}

class _creditcardinstaState extends State<creditcardinsta> {
  String _emiResult = "";

  List _tenureTypes = ['اشهر', 'سنوات'];
  String _tenureType = "اشهر";
  final TextEditingController _tenure = TextEditingController();
  bool _switchValue = false;
  final TextEditingController _principalAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          elevation: 1,
          backgroundColor: Colors.redAccent,
          bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("السحب النقدى",style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("المشتريات",style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                ),

              ]
          ),



          title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(child: Text('تقسيط الكروت الائتمانيه',style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),

        body:

        TabBarView(
          children: [
            Column(
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      height: 60,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Center(
                          child: new TextField(

                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.number,
                            controller: _principalAmount,

                            textAlign: TextAlign.right,
                            decoration: InputDecoration(

                                suffixIcon: Icon(
                                  Icons.rate_review_rounded,
                                  color: Colors.redAccent,
                                ),
                                hoverColor: Colors.red,
                                hintText: "ادخل المبلغ المسحوب",
                                hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.transparent),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(0))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.transparent),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),

                                filled: true,
                                fillColor: Colors.grey[100]
                            ),
                          ),
                        ),
                      ),
                    ),



                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Column(children: [
                          Text(_tenureType,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Switch(
                              activeColor: Colors.red,
                              inactiveTrackColor: Colors.white,
                              value: _switchValue,
                              onChanged: (bool value) {
                                print(value);

                                if (value) {
                                  _tenureType = _tenureTypes[1];
                                } else {
                                  _tenureType = _tenureTypes[0];
                                }

                                setState(() {
                                  _switchValue = value;
                                });
                              })
                        ])),
                    Container(
                      width: 280,
                      height: 60,

                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: new TextField(
                          keyboardType: TextInputType.number,

                          style: TextStyle(color: Colors.black),
                          controller: _tenure,

                          textAlign: TextAlign.right,
                          decoration: InputDecoration(

                              suffixIcon: Icon(
                                Icons.rate_review_rounded,
                                color: Colors.teal,
                              ),
                              hoverColor: Colors.red,
                              hintText: "مده التقسيط( 6 - 12 -24 -36 )",
                              hintStyle: TextStyle(color: Colors.black54),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15))),

                              filled: true,
                              fillColor: Colors.grey[100]
                          ),
                        ),
                      ),
                    ),





                  ],

                ),
                Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 10,
                        ),

                        RaisedButton(
                          color: Colors.redAccent,
                          disabledTextColor: Colors.deepOrange,
                          disabledColor:Colors.deepOrange,
                          focusColor: Colors.deepOrange,
                          hoverColor: Colors.deepOrange,
                          splashColor: Colors.deepOrange,
                          onPressed: _handleCalculation,

                          elevation: 15,
                          focusElevation: 15,
                          animationDuration: Duration( seconds: 100),
                          child: Text(
                            "احسب القسط",
                            style: GoogleFonts.tajawal(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),
                          ),
                          textColor: Colors.white,
                        ),
                        emiResultsWidget(_emiResult)


                      ],
                    )),

              ],
            ),
            Center( child: Text("Page 2")),
          ],
        ),

      ),

    );
  }
  void _handleCalculation() {
    double A = 0.0;
    double P = double.parse(_principalAmount.text);
    double r = 26/12/100;
    int n = _tenureType == "سنوات" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);
    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    _emiResult = A.toStringAsFixed(2);
    setState(() {

    });
  }
  Widget emiResultsWidget(emiResult) {

    bool canShow = false;
    String _emiResult = emiResult;

    if( _emiResult.length > 0 ) {
      canShow = true;
    }
    return
      canShow ? Column(
          children: [
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: Container(
                      child: Text(_emiResult,
                          style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: Text("القسط الشهرى",
                      style: GoogleFonts.openSans(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)

                  ),
                ),
              ],
            ),

          ]
      ) : Container();


  }
}