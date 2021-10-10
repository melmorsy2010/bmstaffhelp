import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:bmstaffhelp/newcashloans/cashh.dart';
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Homee extends StatefulWidget with NavigationStates{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homee> {
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
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Image.asset("assets/home.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Welcome to the World of Cash loans",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(fontSize: 24,color: Constants.primaryTextColor,   fontWeight: FontWeight.w600,)
                     /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        "إختر نوع الدخل ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(fontSize: 24,color: Constants.primaryTextColor,   fontWeight: FontWeight.w600,)
                      /* TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Constants.primaryTextColor,
                      ),*/
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: 300,
                        height: 50,
                        child: Center(
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            itemHeight: 150.0,
                            focusColor: Colors.black,
                            isExpanded: true,
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
                  SizedBox(
                    height: 70.0,
                  ),
                 if (dropdownvalue2.contains("تعهد"))...{GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Cash()));
                   },
                   child: Container(
                     width: 250,
                     height: 50,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color:  LightColors.kRed,
                         border: Border.all(color: LightColors.kRed,
                         )
                     ),
                     child: Center(child: Text("هيا  لنبدأ",style: GoogleFonts.cairo(fontSize: 20,fontWeight: FontWeight.bold),)),
                   ),
                 )}
                 else if (dropdownvalue2.contains("دخل"))...{GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  LightColors.kRed,
                          border: Border.all(color: LightColors.kRed,
                          )
                      ),
                      child: Center(child: Text("التحديث القادم ان شاء الله",style: GoogleFonts.cairo(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                  )},
                  SizedBox(
                    height: 10.0,
                  ),
                  // ignore: deprecated_member_use


          ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);


}