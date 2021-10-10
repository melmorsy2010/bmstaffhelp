
import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod2.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod3.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod4.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod5.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod6.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod7.dart';
import 'package:bmstaffhelp/unsecured_cash_loans/tahod8.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class products2 extends StatefulWidget with NavigationStates{
  @override
  _products2State createState() => _products2State();
}

class _products2State extends State<products2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Stack(
          
          children: [
            Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: 1200,
              child: Image.asset(
                'assets/dark.jpg', fit: BoxFit.cover, width: MediaQuery
                  .of(context)
                  .size
                  .width,),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.backward,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 50,),
                      Container(child: Text("Unsecured Cash Loans",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ),

                SizedBox(height: 50,),

                Container(
                    child: Text("جهات متعاقده للعاملين بالدوله ( تعهد ) ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط دون المستحقات بالعاملين بالدوله ( تحويل قسط فقط ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod2()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط دون المستحقات بالعاملين بالدوله ( تحويل راتب بالكامل ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod3()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط والمستحقات بالعاملين بالدوله ( تحويل راتب بالكامل ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod4()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط والمستحقات بالعاملين بالدوله ( تحويل قسط فقط ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),


                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(color: Colors.white,),

                Container(
                    child: Text("جهات غير متعاقده للعاملين بالدوله ( تعهد ) ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod5()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط دون المستحقات بالعاملين بالدوله ( تحويل قسط فقط ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod6()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط دون المستحقات بالعاملين بالدوله ( تحويل راتب بالكامل ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod7()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط والمستحقات بالعاملين بالدوله ( تحويل راتب بالكامل ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>tahod8()));

                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("تعهد جهه العمل بتحويل الراتب او القسط والمستحقات بالعاملين بالدوله ( تحويل قسط فقط ) ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),


                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Divider(color: Colors.white,),
///////قطاع خاص واستثمارى
                Container(
                    child: Text("قطاع خاص واستثمارى ( تعهد ) ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" قطاع خاص او استثمارى فئه A+\n تحويل راتب او قسط دون المستحقات",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" قطاع خاص او استثمارى فئه A+\n تحويل راتب او قسط \nومستحقات ان وجدت  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" قطاع خاص واستثمارى فئه \n A & B & C  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),


                      SizedBox(width: 5,),


                    ],
                  ),
                ),
                Divider(color: Colors.white,),
///////بدون تعهد
                Container(
                    child: Text("جهات متعاقده ( بدون تعهد ) ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("بدون تعهد جهات متعاقده على تحويل مرتبات على مصرفنا ( حكومه وقطاع عام واعمال )",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("بدون تعهد جهات متعاقده على تحويل مرتبات على مصرفنا ( قطاع خاص ) شركات \n A & B & C  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("بدون تعهد جهات متعاقده على تحويل مرتبات على مصرفنا ( قطاع خاص ) شركات \n A+  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" بدون تعهد جهات متعاقده على تحويل مرتبات على مصرفنا ( قطاع خاص ) شركات \n A & B \n مرتب اكثر من 20 الف جم  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 270,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),


                      SizedBox(width: 5,),


                    ],
                  ),
                ),
                Divider(color: Colors.white,),
///////قطاع خاص واستثمارى
                Container(
                    child: Text("اثبات دخل ( بدون تعهد ) ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),

                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("برنامج موظفي الحكومه وقطاع الاعمال العام ( اثبات دخل )\n بدون تعهد ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج موظفي القطاع الخاص والاستثمارى ( اثبات دخل )\n بدون تعهد مصنف \n A & B  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("  برنامج موظفي القطاع الخاص والاستثمارى ( اثبات دخل )\n  مرتب اكثر من 20 الف بدون تعهد مصنف \n A & B  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 260,
                            height: 140,
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج موظفي القطاع الخاص والاستثمارى ( اثبات دخل )\n بدون تعهد مصنف \n A+   ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج موظفى البنوك والشركات ذات الانشطه المميزه ( اثبات دخل ) دون تعهد  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج عملاء المهن الحره واصحاب الاعمال   ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج الاطباء بموجب اثبات الدخل  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFF802b40), ),


                          child: Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(" برنامج الاطباء بموجب عدد سنين الخبره ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),

                            width: 200,
                            height: 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
