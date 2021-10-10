import 'package:bmstaffhelp/durableloans/tahod.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/durableloans/tahod2.dart';
import 'package:bmstaffhelp/durableloans/notahod.dart';
import 'package:bmstaffhelp/durableloans/private.dart';
import 'package:bmstaffhelp/durableloans/incomeproof.dart';
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';

class durableemployee extends StatefulWidget  with NavigationStates {
  @override
  _durableemployeeState createState() => _durableemployeeState();
}

class _durableemployeeState extends State<durableemployee> {
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
                  const SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: Text(
                        "الموظفين بالهيئات الحكوميه والقطاع العام وقطاع الاعمال العام والخاص والاستثمارى ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 60,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahoddurabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("بتعهد جهة العمل بتحويل المرتب أو القسط ق.ع")),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod2durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("تعهد جهة العمل بتحويل المرتب أو القسط ق.ع بدون تعهد تحويل المستحقات",textAlign: TextAlign.center,)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod3durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("تحويل الراتب/القسط ق.ع (بدون تعهد تحويل الراتب للعاملين بالجهات المتعاقدة)",textAlign: TextAlign.center,)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod4durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("بتعهد جهة العمل بتحويل المرتب أو القسط قطاع خاص",textAlign: TextAlign.center,)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod5durabel()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                          ),
                          child: Center(child: Text("بموجب إثبات الدخل",textAlign: TextAlign.center,)),
                          width: 300,
                          height: 50,
                        ),
                      )
                    ],
                  ),
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
