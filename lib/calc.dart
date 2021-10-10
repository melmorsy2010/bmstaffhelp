import 'package:flutter/material.dart';
import 'dart:math';
import 'package:bmstaffhelp/main.dart';
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  List _tenureTypes = [ 'Month(s)', 'Year(s)' ];
  String _tenureType = "Year(s)";
  String _emiResult = "";
  String _totalinterest ="";
  String _totalamount ="";
  String _principle ="";
  String _p1="";
  String _pR="";
  String _int="";






  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: new Container(),
            backgroundColor: Colors.red,
            title: Center(child: Text("TOP Value",style: TextStyle(color: Colors.white),)),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.arrow_back), onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())),

              }),
            ]
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/dark.jpg',fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
            ),

            Center(
                child: Container(
                  padding: EdgeInsets.only(top: 70),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 5),
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              controller: _principalAmount,
                              decoration: InputDecoration(
                                  hoverColor: Colors.red,
                                  hintText: "Enter Principal Amount",hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  prefixIcon: Icon(Icons.screen_share,color: Colors.red,),

                                  filled: true,
                                  fillColor: Colors.grey[200]
                              ),
                              keyboardType: TextInputType.number,

                            )
                        ),

                        Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 4),
                            child: TextField(
                              style: TextStyle(color: Colors.black),

                              controller: _interestRate,
                              decoration: InputDecoration(
                                  hoverColor: Colors.red,
                                  hintText: "Enter Interest Rate",hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  prefixIcon: Icon(Icons.rate_review,color: Colors.red,),
                                  filled: true,
                                  fillColor: Colors.grey[200]
                              ),
                              keyboardType: TextInputType.number,
                            )
                        ),

                        Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 6,bottom: 5),
                            child: Row(
                              children: <Widget>[

                                Flexible(
                                    flex: 4,
                                    fit: FlexFit.tight,
                                    child: TextField(
                                      style: TextStyle(color: Colors.black),

                                      controller: _tenure,
                                      decoration: InputDecoration(
                                          hoverColor: Colors.red,
                                          hintText: "Tenure",hintStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.transparent),
                                              borderRadius: BorderRadius.all(Radius.circular(30))
                                          ),

                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.transparent),
                                              borderRadius: BorderRadius.all(Radius.circular(30))
                                          ),
                                          prefixIcon: Icon(Icons.timer,color: Colors.red,),
                                          filled: true,
                                          fillColor: Colors.grey[200],

                                      ),

                                      keyboardType: TextInputType.number,
                                    ),

                                ),

                                Flexible(
                                    flex: 1,
                                    child: Column(
                                        children: [
                                          Text(
                                              _tenureType,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,color: Colors.white
                                              )
                                          ),
                                          Switch(
                                            activeColor: Colors.white,
                                              value: _switchValue,
                                              onChanged: (bool value) {
                                                print(value);

                                                if( value ) {
                                                  _tenureType = _tenureTypes[1];
                                                } else {
                                                  _tenureType = _tenureTypes[0];
                                                }

                                                setState(() {
                                                  _switchValue = value;
                                                });
                                              }

                                          )
                                        ]
                                    )
                                )
                              ],
                            )

                        ),
SizedBox(height: 10,),
                        Flexible(
                            fit: FlexFit.loose,
                            child:  Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red,
                              boxShadow: [BoxShadow(
                                blurRadius: 1,color: Colors.red,
                                spreadRadius: 1,
                                offset: Offset.zero

                              )]
                              ),
                              width: 300,
                              child: FlatButton(

                                  onPressed: _handleCalculation,
                                  child: Text("Calculate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  textColor: Colors.white,
                              ),
                            )
                        ),

                        emiResultsWidget(_emiResult)

                      ],
                    )
                )
            )
          ],
        )
    );
  }

  void _handleCalculation() {

    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    double A = 0.0;
    double T = 0.0;
    double S =0.0;
    double PR =0.0;
    double p1 =0.0;
    double inte =0.0;


    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)" ? int.parse(_tenure.text) * 12  : int.parse(_tenure.text);

    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
    T = ((A * n) - P );
  S =(A*n);
  PR = ((P*r));
  p1 = (A- PR);
  inte = (A-p1);
    _emiResult = A.toStringAsFixed(2);
    _totalinterest = T.toStringAsFixed(2);
_totalamount = S.toStringAsFixed(2);
_p1 = p1.toStringAsFixed(2);
_pR = PR.toStringAsFixed(2);
_int = inte.toStringAsFixed(2);
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
      Container(

          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          margin: EdgeInsets.only(top: 25.0),
          child: canShow ? Column(
              children: [
                Text("القسط الشهرى",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,color: Colors.white
                    )
                ),
                Container(
                    child: Text(_emiResult,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,color: Colors.white
                        ))
                ),
SizedBox(height: 15,),
               Container(
                 decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Column(
                       children: <Widget>[

                         Container(

                           child: Column(
                             children: <Widget>[
                               Text("اجمالى القرض + الفوائد",
                                   style: TextStyle(
                                       fontSize: 17.0,
                                       fontWeight: FontWeight.bold,color: Colors.white
                                   )
                               ),
                               Text(_totalamount,
                                   style: TextStyle(
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold,color: Colors.white
                                   ))
                             ],
                           ),
padding: EdgeInsets.only(left: 10),
                         ),

                       ],
                     ),
                     Container(
                       width: 1,
                       height: 55,
                       color: Colors.grey,
                     ),

                     Column(
                       children: <Widget>[

                         Container(

                           child: Column(
                             children: <Widget>[
                               Text("اجمالى الفايده المدفوعه",
                                   style: TextStyle(
                                       fontSize: 17.0,
                                       fontWeight: FontWeight.bold,color: Colors.white
                                   )
                               ),
                               Text(_totalinterest,
                                   style: TextStyle(
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold,color: Colors.white
                                   ))
                             ],
                           ),
                           padding: EdgeInsets.only(right: 10),

                         ),
                       ],
                     )
                   ],
                 ),



               ),
                SizedBox(height: 1,),
                Table(

                  textDirection: TextDirection.rtl,

                  border: TableBorder.all(color: Colors.black, ),
                  children: [
                    TableRow(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('الشراء داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                          ),
                        ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('الشراء خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('السحب النقدى داخل مصر (ATM)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('10000 يوميا من الات بنك مصر والبنوك الاخرى',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('السحب النقدى داخل مصر (POS)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('السحب النقدى خارج مصر (POS & ATM)',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('فى حدود الحد الائتمانى للبطاقه',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('الشراء على شبكه الانترنت داخل مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(' فى حدود الحد الائتمانى للبطاقه وبحد اقصى 400000جم شهريا وبحد اقصى 8 مرات يوميا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('الشراء على شبكه الانترنت خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(' فى حدود الحد الائتمانى للبطاقه وبحد اقصى 400000جم شهريا وبحد اقصى 5 مرات يوميا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('الشراء على شبكه الانترنت خارج مصر',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(' فى حدود الحد الائتمانى للبطاقه وبحد اقصى 400000جم شهريا وبحد اقصى 5 مرات يوميا',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                      ),
                    ]),





                  ],
                ),



              ]
          ) : Container(),



      );

  }

}