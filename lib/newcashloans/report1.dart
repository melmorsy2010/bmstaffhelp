// CreateArabicPdf


import 'dart:io';
import 'package:pdf/widgets.dart' as pw;

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:flutter/material.dart' show AssetImage;
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';


const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);


Future<void> generateAndPrintArabicPdfemployee({String details,String bookNum,String replay,String date,String subject,List<String>items, List<String> itemss, List<String> itemsss, List<String> itemsss4, List<String> itemsss5,List<String> itemsss6, List<String> itemsss7, List<String> itemsss8, String details2, String details3, List<String> itemsss9, List<String> itemsss10, List<String> itemsss11, List<String> itemsss12, List<String> itemsss13, List<String> itemsss44,List<String> itemsss55,List<String> itemsss66,List<String> itemsss77,List<String> itemsss88,List<String> itemsss99,List<String> itemsss100,List<String> itemsss111,List<String> itemsss122,List<String> itemsss133, List<String> heba, String mobile, String principle, String tenuree, String kest, String qr,}) async {
  final Document pdf = Document();

  final lounge = MemoryImage(
    (await rootBundle.load('assets/damen.png')).buffer.asUint8List(),
  );

  final profileImage = MemoryImage(
    (await rootBundle.load('assets/open.png')).buffer.asUint8List(),
  );

  final profileImage2 = MemoryImage(
    (await rootBundle.load('assets/masref.png')).buffer.asUint8List(),
  );
  final profileImage3 = MemoryImage(
    (await rootBundle.load('assets/tameen.png')).buffer.asUint8List(),
  );
  final profileImage4 = MemoryImage(
    (await rootBundle.load('assets/akl.png')).buffer.asUint8List(),
  );
  final profileImage5 = MemoryImage(
    (await rootBundle.load('assets/mm.png')).buffer.asUint8List(),
  );
  final profileImage6 = MemoryImage(
    (await rootBundle.load('assets/contact.png')).buffer.asUint8List(),
  );
  final profileImage7 = MemoryImage(
    (await rootBundle.load('assets/scan.png')).buffer.asUint8List(),
  );
  final togar = MemoryImage(
    (await rootBundle.load('assets/togar.png')).buffer.asUint8List(),
  );
  var arabicFont = Font.ttf(await rootBundle.load("assets/fonts/arabic.ttf"));

  final String _text = 'Lorem ipsum https://flutter.dev\nhttps://pub.dev';

  final togar2 = MemoryImage(
    (await rootBundle.load('assets/57.png')).buffer.asUint8List(),
  );
  final togar3 = MemoryImage(
    (await rootBundle.load('assets/0.png')).buffer.asUint8List(),
  );

  final key = MemoryImage(
    (await rootBundle.load('assets/key.png')).buffer.asUint8List(),
  );
  final pricless = MemoryImage(
    (await rootBundle.load('assets/pricless.png')).buffer.asUint8List(),
  );


  final togar4 = MemoryImage(
    (await rootBundle.load('assets/points.png')).buffer.asUint8List(),
  );

  final togar5 = MemoryImage(
    (await rootBundle.load('assets/5.png')).buffer.asUint8List(),
  );
  final visa = MemoryImage(
    (await rootBundle.load('assets/tahodpdf.png')).buffer.asUint8List(),
  );

  final apply = MemoryImage(
    (await rootBundle.load('assets/newclient.png')).buffer.asUint8List(),
  );
  final titanums = MemoryImage(
    (await rootBundle.load('assets/worldben.png')).buffer.asUint8List(),
  );
  final iosmastercard4u = MemoryImage(
    (await rootBundle.load('assets/ios4.png')).buffer.asUint8List(),
  );
  final ioskey = MemoryImage(
    (await rootBundle.load('assets/apple2.png')).buffer.asUint8List(),
  );

  final iospricless = MemoryImage(
    (await rootBundle.load('assets/ios5.png')).buffer.asUint8List(),
  );
  _launchURL() async {
    final url =
        'https://wa.me/2$mobile?text=* ازيك استاذ $subject انا اسمي $subject انا تاريخ ميلادى $details3 ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  final String SUCCESS_MESSAGE=mobile.toString();
  print(SUCCESS_MESSAGE);
  pdf.addPage(

      Page(


          margin: EdgeInsets.all(10),

          theme: ThemeData.withFont(
            base: arabicFont,
          ),
          pageFormat: PdfPageFormat.a4,

          build: (Context context) {
            return  Container(
                margin: const EdgeInsets.all(2.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(

                    border: Border.all(color: PdfColor.fromInt(1),width: 2)),
                child:

                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              height: 2,
                            )]),
                      Container(
                        // width: 100,
                        height: 0,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('عرض العميل', style: TextStyle(

                                        fontSize: 30,
                                    ))
                                )
                            ),
                          ]
                      ),
                      Container(

                        // width: 100,
                        height: 5,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(
                                        subject.toString().replaceAll('‏', ''), style: TextStyle(
                                      fontSize: 18,color:PdfColor.fromRYB(1, 0, 0),
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,

                                child: Text('عزيزي العميل :  ', style: TextStyle(
                                  fontSize: 18,
                                )
                                )
                            ),
                          ]
                      ),
                      Container(
                        height: 5,
                      ),
                      Container(
                          color: PdfColor.fromHex("808080"),
                          height: 1,
                          width: 400
                      ),
                      Container(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('يشرفنا انضمامكم لعائله بنك مصر ، ونأمل ان تحظى منتجانتا دائما رضاكم.  ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),
                          ]
                      ),
                      Container(
                        height: 5,
                      ),

                      Container(
                        height: 0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(details, style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('القطاع التابع له  : ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 3,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(details2, style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('اسم البرنامج :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              color: PdfColor.fromHex("D3D3D3"),
                              margin: const EdgeInsets.all(10.0),
                              child:

                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text(' **** بيانات العميل **** ', style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      )
                                  )
                              ),
                            )
                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(details3, style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('تاريخ ميلاد العميل :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(bookNum, style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('عمر العميل :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(items.toString()+ "شهر" , style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('أقصي مده للقرض :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(replay+ "جم" , style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('صافى الدخل الشهرى :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(date+ "جم" , style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('أقصى قسط يمكن خصمه :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('طبقا لقرار البنك المركزي أقصى قسط يمكن خصمه لا يتعدى % 50  من صافى الدخل الشهرى.', style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    )
                                )
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              color: PdfColor.fromHex("00008B"),
                              margin: const EdgeInsets.all(10.0),
                            ),


                          ]
                      ),
                      Container(
                        height: 2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(itemss.toString()+ "جم" , style: TextStyle(
                                        fontSize: 17
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('أقصي مبلغ يمكن العميل الحصول عليه  طبقا لأقصي مده متاحه :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 17
                                    ))
                                )
                            ),

                          ]
                      ),
                      Container(
                        height: 5,
                      ),
                      Container(
                          color: PdfColor.fromHex("808080"),
                          height: 1,
                          width: 400
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              color: PdfColor.fromHex("D3D3D3"),
                              margin: const EdgeInsets.all(10.0),
                              child:

                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text(' **** جدول استرشادى **** ', style: TextStyle(
                                        fontSize: 18,
                                      ),
                                      )
                                  )
                              ),
                            )
                          ]
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            cellHeight: 5.0,
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            headers: <dynamic>[ 'فائده القرض','القسط الشهرى','أقصى مبلغ','المدة '],
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss4,itemsss5,itemsss6,itemsss7,itemsss8,itemsss9,itemsss10,itemsss11,itemsss12,itemsss13,//itemsss44,itemsss55,itemsss66,itemsss77,itemsss88,itemsss99,itemsss100,itemsss111,itemsss122,//itemsss133
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 0,
                      ),



                      /////////





                    ]
                )
            );
          }
      ));
  pdf.addPage(Page(
      margin: EdgeInsets.all(10),
      theme: ThemeData.withFont(
        base: arabicFont,
      ),
      pageFormat: PdfPageFormat.a4,
      build: (Context context) {
        return  Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(

                border: Border.all(color: PdfColor.fromInt(1),width: 2)),
            child:

            Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text(' **** تفاصيل القرض المطلوب**** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Table.fromTextArray(
                        cellHeight: 5.0,
                        headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                        headers: <dynamic>[ 'البيان','النوع '],
                        cellAlignment: Alignment.center,
                        cellStyle: TextStyle(fontSize: 12),
                        data:
                        <List<dynamic>>[
                         itemsss44,itemsss55,itemsss66,itemsss77,itemsss88,itemsss99,itemsss100,itemsss111,//itemsss122,//itemsss133
                          // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text(' **** المستندات المطلوبه**** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('إيصال مرافق حديث  كهرباء أو غاز أو مياه لا يتعدى 3 أشهر سابقه ويتم الاعفاء من احضار \nالايصال فى حاله تحويل الراتب على البنك بانتظام لمده لا تقل عن 3 شهور \n   شروط قبول الايصال  \n : - الا تقل قيمه الايصال عن 10 جم \n فى حاله فاتوره الشحن فورى ان لا تقل قيمه الفاتوره عن 40 جم بشرط أن يكون موضح بها\n إسم العميل وعنوان السكن  ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),

                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('  ملحوظه مهمه -- فى حاله ان الايصال باسم شخص اخر غير المقترض يجب احضار ما يثبت العلاقه', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),



                      ]
                  ),
                  Container(
                    height: 5,
                  ),
                  Container(
                      color: PdfColor.fromHex("808080"),
                      height: 1,
                      width: 400
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('تعهد جهه العمل تحويل الراتب / القسط والمستحقات مختوم بختم جهه العمل \nويجب ان يكون الختم واضح ومقروء - مرفق بالصفحه رقم 3  ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),
                  Container(
                    height: 5,
                  ),
                  Container(
                      color: PdfColor.fromHex("808080"),
                      height: 1,
                      width: 400
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('مفردات مرتب توضح الدخل الشهرى وتكون صلاحيتها شهران على الاكثر - ان تكون مختومه \nبختم جهه العمل وان يكون الختم واضح ومقروء  ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),
                  Container(
                    height: 5,
                  ),
                  Center(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // width: 100,
                            height: 100,
                            child: Image(profileImage),
                          ),
                          Container(
                            // width: 100,
                            height: 100,
                            child: Image(profileImage2),
                          ),
                          Container(
                            // width: 100,
                            height: 100,
                            child: Image(profileImage3),
                          ),
                          Container(
                            // width: 100,
                            height: 100,
                            child: Image(profileImage4),
                          ),
                          Container(
                            // width: 100,
                            height: 100,
                            child: Image(lounge),
                          ),

                        ]),),
          ]
      )
  );
  }
));
  pdf.addPage(Page(
      margin: EdgeInsets.all(10),
      theme: ThemeData.withFont(
        base: arabicFont,
      ),
      pageFormat: PdfPageFormat.a4,
      build: (Context context) {
        return  Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(

                border: Border.all(color: PdfColor.fromInt(1),width: 2)),
            child:

            Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text(' **** معلومات تهمك **** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),

                  Row(
                     crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('امكانيه استعاضه القرض بعد مرور 3 أشهر من تاريخ صرف القرض وبدون حد أقصى \n  والاستعاضه تعنى سداد القرض السابق من القرض الجديد ويصرف الفرق للعميل', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),

                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),


                  Container(
                    height: 5,
                  ),
                  Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('إمكانيه سداد القروض الممنوحه للعميل طرف أي بنك أخر ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),

                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),
                  Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('السداد المعجل : يمكن عمل سداد معجل للقرض ويتم اعفاء العميل من عائد الاقساط المتبقيه\n ويتم تطبيق عموله قدرها 5 % على رصيد الاصل المتبقى ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),

                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),
                  Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('يتم التأمين ضد مخاطر الوفاه او العجز الكلى مع تحمل البنك مصاريف التأمين ', style: TextStyle(
                                  fontSize: 15,
                                ),
                                )
                            )
                        ),

                        Container(
                          width: 10,
                          height: 10,
                          color: PdfColor.fromHex("00008B"),
                          margin: const EdgeInsets.all(10.0),
                        ),


                      ]
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                      color: PdfColor.fromHex("808080"),
                      height: 2,
                      width: 400
                  ),
                  Container(
                    height: 10,
                  ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [



                  pw.BarcodeWidget(
                      data: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85+%D8%A3%D9%86%D8%A7%20%D8%B5%D8%A7%D9%81%D9%89%20%D8%A7%D9%84%D8%AF%D8%AE%D9%84%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20'+"$replay" +"%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89"+ "$details3"+ "%D9%88%D8%A3%D9%82%D8%B5%D9%89%20%D9%82%D8%B3%D8%B7%20%D9%8A%D9%85%D9%83%D9%86%20%D8%AE%D8%B5%D9%85%D9%87"+"$date" +"%D8%AD%D8%B6%D8%B1%D8%AA%D9%83%20%D9%83%D9%86%D8%AA%20%D8%AD%D8%B3%D8%A8%D8%AA%D9%84%D9%89%20%D9%85%D8%A8%D9%84%D8%BA%20" +  "$principle"+ " %D9%84%D9%85%D8%AF%D9%87" + "$tenuree"+ "%D9%88%D8%A7%D9%84%D9%82%D8%B3%D8%B7%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20" + "$kest" +"%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%AA%D8%A7%D9%86%D9%89%20",
                      barcode: pw.Barcode.qrCode(),
                      width: 150,
                      height: 150
                  ),
                  pw.Align(
                      alignment: pw.Alignment.topLeft,
                      child: pw.UrlLink(
                          destination: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85+%D8%A3%D9%86%D8%A7%20%D8%B5%D8%A7%D9%81%D9%89%20%D8%A7%D9%84%D8%AF%D8%AE%D9%84%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20'+"$replay" +"%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89"+ "$details3"+ "%D9%88%D8%A3%D9%82%D8%B5%D9%89%20%D9%82%D8%B3%D8%B7%20%D9%8A%D9%85%D9%83%D9%86%20%D8%AE%D8%B5%D9%85%D9%87"+"$date" +"%D8%AD%D8%B6%D8%B1%D8%AA%D9%83%20%D9%83%D9%86%D8%AA%20%D8%AD%D8%B3%D8%A8%D8%AA%D9%84%D9%89%20%D9%85%D8%A8%D9%84%D8%BA%20" +  "$principle"+ " %D9%84%D9%85%D8%AF%D9%87" + "$tenuree"+ "%D9%88%D8%A7%D9%84%D9%82%D8%B3%D8%B7%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20" + "$kest" +"%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%AA%D8%A7%D9%86%D9%89%20",

                          child:
                          Container(
                            // width: 100,
                            height: 130,
                            child: Image(profileImage7),

                          ))),
                  pw.Align(
                      alignment: pw.Alignment.topLeft,
                      child: pw.UrlLink(
                          destination: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85+%D8%A3%D9%86%D8%A7%20%D8%B5%D8%A7%D9%81%D9%89%20%D8%A7%D9%84%D8%AF%D8%AE%D9%84%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20'+"$replay" +"%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89"+ "$details3"+ "%D9%88%D8%A3%D9%82%D8%B5%D9%89%20%D9%82%D8%B3%D8%B7%20%D9%8A%D9%85%D9%83%D9%86%20%D8%AE%D8%B5%D9%85%D9%87"+"$date" +"%D8%AD%D8%B6%D8%B1%D8%AA%D9%83%20%D9%83%D9%86%D8%AA%20%D8%AD%D8%B3%D8%A8%D8%AA%D9%84%D9%89%20%D9%85%D8%A8%D9%84%D8%BA%20" +  "$principle"+ " %D9%84%D9%85%D8%AF%D9%87" + "$tenuree"+ "%D9%88%D8%A7%D9%84%D9%82%D8%B3%D8%B7%20%D8%A7%D9%84%D8%B4%D9%87%D8%B1%D9%89%20" + "$kest" +"%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%AA%D8%A7%D9%86%D9%89%20",

                          child:
                          Container(
                            // width: 100,
                            height: 130,
                            child: Image(profileImage5),

                          ))),
                  ]),
                  Container(
                    height: 30,
                  ),
                  Container(
                      color: PdfColor.fromHex("808080"),
                      height: 2,
                      width: 400
                  ),

                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [




                        pw.Align(
                            alignment: pw.Alignment.topLeft,
                            child: pw.UrlLink(
                                destination: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85%20%D8%A7%D9%86%D8%A7%20%D8%A7%D8%B3%D9%85%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D9%88%D8%B8%D9%8A%D9%81%D8%AA%D9%89%20%D8%A7%D9%84%D8%AD%D8%A7%D9%84%D9%8A%D9%87%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D8%B5%D8%A7%D9%81%D9%89%20%D9%85%D8%B1%D8%AA%D8%A8%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89%20:%20-%20%20%20%20%20%20%20',

                                child:
                                Container(
                                  // width: 100,
                                  height: 130,
                                  child: Image(apply),

                                ))),
                      ]),
                  Container(
                    height: 30,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [




                        pw.BarcodeWidget(
                            data: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85%20%D8%A7%D9%86%D8%A7%20%D8%A7%D8%B3%D9%85%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D9%88%D8%B8%D9%8A%D9%81%D8%AA%D9%89%20%D8%A7%D9%84%D8%AD%D8%A7%D9%84%D9%8A%D9%87%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D8%B5%D8%A7%D9%81%D9%89%20%D9%85%D8%B1%D8%AA%D8%A8%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89%20:%20-%20%20%20%20%20%20%20',
                            barcode: pw.Barcode.qrCode(),
                            width: 150,
                            height: 150
                        ),
                        Container(
                          width: 30,
                        ),
                        pw.Align(
                            alignment: pw.Alignment.topLeft,
                            child: pw.UrlLink(
                                destination: 'https://api.whatsapp.com/send?phone=2$SUCCESS_MESSAGE&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85%20%D8%A7%D9%86%D8%A7%20%D8%A7%D8%B3%D9%85%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D9%88%D8%B8%D9%8A%D9%81%D8%AA%D9%89%20%D8%A7%D9%84%D8%AD%D8%A7%D9%84%D9%8A%D9%87%20:-%20%20%20%20%20%20%20%20%20%20%20%20%20%D9%88%D8%B5%D8%A7%D9%81%D9%89%20%D9%85%D8%B1%D8%AA%D8%A8%D9%89%20:-%20%20%20%20%20%20%20%20%20%20%D9%88%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%20%D9%85%D9%8A%D9%84%D8%A7%D8%AF%D9%89%20:%20-%20%20%20%20%20%20%20',

                                child:
                                Container(
                                  // width: 100,
                                  height: 150,
                                  child: Image(profileImage6),

                                ))),
                        Container(
                          width: 30,
                        ),
                       Column(
                         mainAxisAlignment: pw.MainAxisAlignment.center,
                         crossAxisAlignment: pw.CrossAxisAlignment.center,
                           children: [

                             Row(
                                 children: [

                                   Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text(
                                          qr.toString().replaceAll('‏', ''), style: TextStyle(
                                        fontSize: 18,color:PdfColor.fromRYB(1, 0, 0),
                                      ))
                                  )
                              ),
                          Directionality(
                              textDirection: TextDirection.rtl,

                              child: Text('الإسم :  ', style: TextStyle(
                                fontSize: 18,
                              )
                              )
                          ),
                            ]  ),
                             Row(
                                 children: [

                                   Directionality(
                                       textDirection: TextDirection.rtl,
                                       child: Center(
                                           child: Text(
                                               mobile.toString().replaceAll('‏', ''), style: TextStyle(
                                             fontSize: 18,color:PdfColor.fromRYB(1, 0, 0),
                                           ))
                                       )
                                   ),
                                   Directionality(
                                       textDirection: TextDirection.rtl,

                                       child: Text('رقم الهاتف :  ', style: TextStyle(
                                         fontSize: 18,
                                       )
                                       )
                                   ),
                                 ]  ),
                      ])

                      ]),
                ]
            )
        );
      }
  ));

  pdf.addPage(Page(
      margin: EdgeInsets.all(10),
      theme: ThemeData.withFont(
        base: arabicFont,
      ),
      pageFormat: PdfPageFormat.a4,
      build: (Context context) {
        return  Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(10.0),

            child:

            Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // width: 100,
                    height: 1800,
                    width: 900,
                    child: Image(visa),
                  ),

                ]
            )
        );
      }
  ));

  final String dir = (await getApplicationDocumentsDirectory()).path;
  final String path = '$dir/1.pdf';
  final File file = File(path);

  await file.writeAsBytes(await pdf.save());
  await Printing.sharePdf(bytes: await pdf.save(), filename: '$subject.pdf');
 // await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());


}
