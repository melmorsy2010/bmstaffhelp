import 'package:bmstaffhelp/durableloans/pension/pension1.dart';
import 'package:bmstaffhelp/durableloans/pension/pension2.dart';
import 'package:bmstaffhelp/durableloans/pension/pension3.dart';
import 'package:bmstaffhelp/durableloans/pension/pension4.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/durableloans/tahod2.dart';
import 'package:bmstaffhelp/durableloans/notahod.dart';
import 'package:bmstaffhelp/durableloans/private.dart';

class pension extends StatefulWidget {
  @override
  _pensionState createState() => _pensionState();
}

class _pensionState extends State<pension> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black26),
            height: 240,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/solid.jpg", fit: BoxFit.contain)),


          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),

            child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: Text(
                        "أصحاب ومستحقى المعاشات ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 130,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pensiondurabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("أصحاب المعاش ( تعهد جهه المعاش)")),
                          width: 300,
                          height: 50,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pension2durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("أصحاب المعاش ( بدون تعهد جهه المعاش)",textAlign: TextAlign.center,)),
                          width: 300,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pension3durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("مستفيدى المعاش ( تعهد جهه المعاش)",textAlign: TextAlign.center,)),
                          width: 300,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>pension4durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("مستفيدى المعاش ( بدون تعهد جهه المعاش)",textAlign: TextAlign.center,)),
                          width: 300,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                ]),

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
                "DETAILS",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),

          ),

        ],
      ),

    );
  }
}
