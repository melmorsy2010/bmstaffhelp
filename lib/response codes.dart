import 'package:bmstaffhelp/sidebar/navigation_bloc.dart';
import 'package:bmstaffhelp/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';


class respone extends StatefulWidget with NavigationStates{
  @override
  _responeState createState() => _responeState();
}

class _responeState extends State<respone> {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SideBarLayout()));
              },
            ),
            title: Text('Cards Response Codes'),
          ),
          body: Center(
              child: SingleChildScrollView(
                child: Column(children: <Widget>[

                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child:
                    Text(
                      "كروت الخصم الفورى والمرتبات",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    ),),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Table(

defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      textDirection: TextDirection.rtl,

                      border: TableBorder.all(color: Colors.black,width: 2),
                      columnWidths: {0: FractionColumnWidth(.2), 1: FractionColumnWidth(.4), 2: FractionColumnWidth(.4)},
                      children: [
                        TableRow( children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('0',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Approved')
                          ]),
                          Column(children:[
                            Center(child: Text('الحركه صحيحه وتم صرف المبلغ',textAlign: TextAlign.center,))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('14 & 12',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Invalid Card')
                          ]),
                          Column(children:[
                            Center(child: Text('توجد تعليمات مسجله بعدم السحب او الحساب خامل او علامه ATM  غير مفعله على الحساب',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('8',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('issuer timeout')
                          ]),
                          Column(children:[
                            Center(child: Text('الحركه غير صحيحه وتم خصمها من الحساب وترد تلقائيا واذا لم ترد يتم عمل شكوى',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('20',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('NO form account')
                          ]),
                          Column(children:[
                            Center(child: Text('العميل يختار حساب غير صحيح على الاله',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('22 & 23',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('NO checking account')
                          ]),
                          Column(children:[
                            Center(child: Text('لا يوجد موافقات من النظام المشغل يتم توجيه العميل للمحاوله مره اخرى',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('39',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Trasaction not allowed')
                          ]),
                          Column(children:[
                            Center(child: Text('الحركه غير مسموح بها العميل لم يقوم بادخال الرقم السرى فى حاله المشتريات',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('41 & 42 & 43 ',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('HOT CARD')
                          ]),
                          Column(children:[
                            Center(child: Text('البطاقه موقوفه للفقد او ملغاه ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('44',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('PICK UP CARD')
                          ]),
                          Column(children:[
                            Center(child: Text('اليطاقه موقوفه للفقد او ملغاه او تم ادخال الرقم السرى خطأ 4 مرات حتى تم سحب البطاقه',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('51',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('NO FUNDS')
                          ]),
                          Column(children:[
                            Center(child: Text('عدم كفايه الرصيد',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('54',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Expired card')
                          ]),
                          Column(children:[
                            Center(child: Text('البطاقه منتهيه الصلاحيه او البطاقه المجدده لم يتم تنشيطها من قبل الفرع',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('55',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('incorrect pin ')
                          ]),
                          Column(children:[
                            Center(child: Text(' تم ادخال الرقم السرى خطأ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('57',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Txn not premitted ')
                          ]),
                          Column(children:[
                            Center(child: Text('اجراء معاملات غير مسموح بها ( انترنت )',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('58',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('Txn not premitted on term')
                          ]),
                          Column(children:[
                            Center(child: Text('لو تكررت على 3 الات ATM  مختلفه معناها ان الكارت تالف',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('61',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('EXCEEDS LIMITS')
                          ]),
                          Column(children:[
                            Center(child: Text('تم استنفاذ حد السحب النقدى اليومى او الشهرى للبطاقه',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('65',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('EXCEEDS FREQ LIMIT')
                          ]),
                          Column(children:[
                            Center(child: Text('تم استنفاذ عدد مرات السحب النقدى اليومى ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('75',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('EXCEEDS PIN  RETRY')
                          ]),
                          Column(children:[
                            Center(child: Text('تم استنفاذ عدد مرات ادخال الرقم السرى خطأ 3 مرات ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('89',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('SECURITY VIOLATION')
                          ]),
                          Column(children:[
                            Center(child: Text('فى حاله ادخال الرقم السرى فى المشتريات خطأ ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('96',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('SYSTEM ERROR ')
                          ]),
                          Column(children:[
                            Center(child: Text('البطاقه لم يتم تنشيطها على نظام OASIS او تم تجربه البطاقه قبل التنشيط ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('103',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('UNABLE DISPENSE ')
                          ]),
                          Column(children:[
                            Center(child: Text('تم رفض الحركه من قبل النظام ولم يتم خصم القيمه من الحساب ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('112',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('UNCERTAIN DISPENSE ')
                          ]),
                          Column(children:[
                            Center(child: Text('حركه مشكوك فى صحتها وتم خصمها من الحساب وترد عن طريق الفرع المنفذ لديه الحركه ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('250',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('SPECAIL CARD ')
                          ]),
                          Column(children:[
                            Center(child: Text('العميل لم يقم بتخليق الرقم السرى على اله الصراف الالي',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('900',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('ISSUER DOWN ')
                          ]),
                          Column(children:[
                            Center(child: Text('توجد مشكله فى نظام عمل البطاقات المحاوله بعد ربع ساعه ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('927',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text(' ')
                          ]),
                          Column(children:[
                            Center(child: Text('توجد مشكله فى نظام عمل البطاقات او العميل تجاوز حد الاستخدام ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('931 &932',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('BAD MOBILE  ')
                          ]),
                          Column(children:[
                            Center(child: Text('لم يتم ادخال رقم الموبايل او لم يتم ادخاله بطريقه صحيحه ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('255',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('   ')
                          ]),
                          Column(children:[
                            Center(child: Text('استنفاذ الحد الشهرى ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('74',textAlign: TextAlign.justify,))

                              ]

                          ),
                          Column(children:[
                            Text('   ')
                          ]),
                          Column(children:[
                            Center(child: Text('تم ادخال الرقم السرى اكثر من مره خطأ ولم يتم سحب الكارت',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child:
                    Text(
                      "كروت فيزا انترنت",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    ),),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      textDirection: TextDirection.rtl,

                      border: TableBorder.all(),
                      columnWidths: {0: FractionColumnWidth(.2), 1: FractionColumnWidth(.8)},
                      children: [
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('14 & 12',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('الكارت منتهى الصلاحيه او يتم ادخال تاريخ النهايه خطأ',textAlign: TextAlign.center,))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('17',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('هو حركه reversal ( لم تؤثر على رصيد البطاقه وتم ردها للمتاح مره اخرى وهى حركات test  لاختبار البطاقه',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('57',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('سبب رفض الحركه هو ايقاف البنك التعامل مع اى تاجر موصف لدى منظمه فيزا انه يعمل بتحويل الاموال الحركه تاتى على انها تحويل اموال خارج مصر وليس مشتريات',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('61',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('تخطى الحد الاقصى للاستخدام الشهرى',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('51',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('الرصيد غير كافى',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('39',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('لا يتم اجراء المعامله على الانترنت ( offline transaction )',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('82',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('يتم ادخال ال cvv  خطأ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('82',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('يتم ادخال ال cvv  خطأ',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('802',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('يتم ادخال ال cvv  خطأ او الموقع لا يدعم او ليس به امكانيه استخدام الرقم السرى الخاص بالكارت cvv',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                        TableRow( children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Center(child: Text('900 & 923',textAlign: TextAlign.justify,))

                              ]

                          ),

                          Column(children:[
                            Center(child: Text('system update',textAlign: TextAlign.center,textDirection: TextDirection.rtl))
                          ]),
                        ]),
                      ],
                    ),
                  ),
                ]),
              ))),
    );

  }
}
