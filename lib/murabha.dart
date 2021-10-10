import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'murabha2.dart';

//widgets

class murabha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,


        body: Stack(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/profile-screen-bg.png'),
                      fit: BoxFit.fitWidth))),
          SafeArea(
            child: ListView(children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, top: 74.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                          color: Colors.white,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: .0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 70.0, bottom: 20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                             Padding(
                                                padding:
                                                const EdgeInsets.only(left: 34.0, right: 34.0, top: 5),
                                                child: RaisedButton(
                                                  textColor: Colors.white,
                                                  color: Colors.black,
                                                  onPressed: () {
                                                    // Respond to button press
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                  ),
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.0, right: 16.0, top: 12, bottom: 12),
                                                      child: Text("المرابحه بالوكاله",style: GoogleFonts.cairo(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                                                           )),
                                                
                                              ),
                                            ),


                                          ],
                                        ),

                                        SizedBox(height: 20.0),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 210.0, right: 4.0),
                                          child: Align(
                                            child: Text(
                                                "نبذه مختصره",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.cairo(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                                          ),
                                        ),
Divider(color: Colors.grey,),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          child: Align(
                                            child: Text(
                                                "يقوم المنتج على صيغة المرابحة المشمولة بالوكالة لتمويل عملاء بنك مصر في تغطية احتياجاتهم النقدية المختلفة لتمويل شراء مستلزمات البناء والتشييد والترميم وتمويل أي مستلزمات منزلية أو شخصية لم تشملها منتجات التجزئة المصرفية الإسلامية الأخرى، وذلك في حالة تعذر الحصول على عرض سعر (مثال: تمويل شراء الأدوات الصحية / السيراميك / البويات / تمويل المستلزمات الطبية والعلاجية / اشتراكات النوادي / تمويل صيانة السيارات / تجديد وتحديث المنزل / تمويل حفلات الزواج/ رسوم التأمين / أي أغراض أخري مُباحة شرعاً وفقاً لطلب العميل) .",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  
                                                    color: Color.fromRGBO(
                                                        82, 95, 127, 1),
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(height: 15.0),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 34.0, right: 34.0, top: 5),
                                              child: RaisedButton(
                                                textColor: Colors.white,
                                                color: Colors.black,
                                                onPressed: () {
                                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CourseInfoScreen()));
                                                  // Respond to button press
                                                },
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4.0),
                                                ),
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.0, right: 16.0, top: 12, bottom: 12),
                                                    child: Text("برامج التمويل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                                                    )),

                                              ),
                                            ),


                                          ],
                                        ),
                                        SizedBox(
                                          height: 290,
                                          child: GridView.count(
                                              primary: false,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 24.0,
                                                  vertical: 10.0),
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                              crossAxisCount: 2,
                                              children: <Widget>[
                                                Container(
                                                  child: Center(child: Text("أصحاب الأوعية \nالادخارية",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              6.0)),

                                                    )),

                                                Container(
                                                    child: Center(child: Text("الموظفين بتعهد جهة العمل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              6.0)),

                                                    )),
                                                Container(
                                                    child: Center(child: Text("الموظفين بشهادة إثبات الدخل",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.teal,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              6.0)),

                                                    )),
                                                Container(
                                                    child: Center(child: Text("أصحاب المهن\n الحرة ",style: GoogleFonts.cairo(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              6.0)),

                                                    )),
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      FractionalTranslation(
                          translation: Offset(0.0, -0.5),
                          child: Align(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/kenana.jpg"),
                              radius: 65.0,
                              // maxRadius: 200.0,
                            ),
                            alignment: FractionalOffset(0.5, 0.0),
                          ))
                    ]),
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
