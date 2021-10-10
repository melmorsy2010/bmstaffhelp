import 'package:bmstaffhelp/classic/classic.dart';
import 'package:bmstaffhelp/gold/gold.dart';
import 'package:bmstaffhelp/platinium/plat.dart';
import 'package:bmstaffhelp/tit/tit.dart';
import 'package:bmstaffhelp/world/world.dart';
import 'package:bmstaffhelp/worldelite/eworld.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/classic/classic.dart';
class CC extends StatefulWidget {
  @override
  CCState createState() {
    return new CCState();
  }
}

class CCState extends State<CC> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/dark.jpg', fit: BoxFit.cover, width: MediaQuery
                  .of(context)
                  .size
                  .width,),
            ),
             Column(
                children: <Widget>[
                  SizedBox(height: 250,),
                  Text('برجاء ادخل حد الكارت ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 120,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: new TextField(
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.number,
                            controller: _text,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                errorText: _validate ? 'Value Can\'t Be Empty' : null,

                                hoverColor: Colors.red,
                                hintText: "ادخل الحد الائتمانى",
                                hintStyle: TextStyle(color: Colors.grey),
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



                  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    onPressed: () {
                      if (_text.text == "") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(child: Text("برجاء ادخال قيمه صحيحه")),
                              );
                            });
                      }
                      else if(int.parse(_text.text) >= 0 && int.parse(_text.text) < 2000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return  AlertDialog(
                                title: Center(child: Text("اقل حد للكارت 2000 جم ")),
                              );
                            });

                      }


                      else if(int.parse(_text.text) >= 2000 && int.parse(_text.text) < 3000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return  AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/clas.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("Classic Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Classiccard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 3000 && int.parse(_text.text) < 10000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return  AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/classic.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("Gold Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Goldcard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 10000 && int.parse(_text.text) < 25000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/TT.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("Titanium Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Titcard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 25000 && int.parse(_text.text) < 100000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/pm.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("Platinum Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Platcard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 100000 && int.parse(_text.text) < 300000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/we.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("World Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Worldcard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 300000 && int.parse(_text.text) < 800000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Image.asset("assets/w.jpg"),
                                    SizedBox(height: 10,),
                                    Container(child: Center(child: Text("World Elite Card "))),
                                    SizedBox(height: 10,),

                                    Container(
                                      width: 230,
                                      height: 50,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.red)
                                        ),                                        child: Text("اضغط للاطلاع على تفاصيل الكارت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                        color: Colors.red,
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Eworldcard()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });

                      }
                      else if(int.parse(_text.text) >= 800000   ) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Container(child: Center(child: Text("اقصى حد للكارت 799999 الف  "))),


                                  ],
                                ),
                              );
                            });

                      }
                    },
                    child: Text("شوفلى الكارت نوعه ايه؟",style: TextStyle(fontSize: 20),),
                  ),

                ],
              ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  "Credit Card Type",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

