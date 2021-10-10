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

import 'package:flutter_email_sender/flutter_email_sender.dart';

const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);


Future<void> generateAndPrintArabicPdfsecure({String details,String bookNum,String replay,String date,String subject,List<String>items, List<String> itemss, List<String> itemsss, List<String> itemsss4, List<String> itemsss5,List<String> itemsss6, List<String> itemsss7, List<String> itemsss8, String details2, String details3, List<String> itemsss9, List<String> itemsss10, List<String> itemsss11, List<String> itemsss12, List<String> itemsss13,}) async {
  final Document pdf = Document();

  final profileImage = MemoryImage(
    (await rootBundle.load('assets/mm.png')).buffer.asUint8List(),
  );

  final profileImage2 = MemoryImage(
    (await rootBundle.load('assets/bmlogo.png')).buffer.asUint8List(),
  );
  final profileImage3 = MemoryImage(
    (await rootBundle.load('assets/club2.png')).buffer.asUint8List(),
  );
  final profileImage4 = MemoryImage(
    (await rootBundle.load('assets/visa.png')).buffer.asUint8List(),
  );
  final profileImage5 = MemoryImage(
    (await rootBundle.load('assets/bmonline.png')).buffer.asUint8List(),
  );
  final profileImage6 = MemoryImage(
    (await rootBundle.load('assets/apple1.png')).buffer.asUint8List(),
  );
  final profileImage7 = MemoryImage(
    (await rootBundle.load('assets/iosonline.png')).buffer.asUint8List(),
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


  final togar4 = MemoryImage(
    (await rootBundle.load('assets/points.png')).buffer.asUint8List(),
  );

  final togar5 = MemoryImage(
    (await rootBundle.load('assets/5.png')).buffer.asUint8List(),
  );
  final visa = MemoryImage(
    (await rootBundle.load('assets/vee.png')).buffer.asUint8List(),
  );

  final apply = MemoryImage(
    (await rootBundle.load('assets/apply.png')).buffer.asUint8List(),
  );
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
                              height: 5,
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
                                    child: Text('SECURED LOAN OFFER', style: TextStyle(

                                        fontSize: 20,fontWeight: FontWeight.bold
                                    ))
                                )
                            ),
                          ]
                      ),
                      Container(

                        // width: 100,
                        height: 10,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text(
                                        details.toString().replaceAll('‏', ''), style: TextStyle(
                                      fontSize: 15,color:PdfColor.fromRYB(1, 0, 0),
                                    ))
                                )
                            ),
                            Directionality(
                                textDirection: TextDirection.rtl,

                                child: Text('عزيزي العميل :  ', style: TextStyle(
                                  fontSize: 15,
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
                                        fontSize: 15
                                    ))
                                )
                            ),
                          ]
                      ),
                      Container(
                        height: 10,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('أولًا تفاصيل الشهادات', style: TextStyle(

                                        fontSize: 15,
                                    ))
                                )
                            ),
                          ]
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(50, 2, 50, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            headers: <dynamic>[   'الفايده الشهريه','معدل العائد','مبلغ الشهاده','مسلسل الشهاده'],
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              items,itemss,itemsss,//itemsss5,itemsss6,itemsss7,itemsss8
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: PdfColor.fromHex("D3D3D3"),
                        margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                         itemsss4,
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('ثانيا تفاصيل القرض', style: TextStyle(

                                      fontSize: 15,
                                    ))
                                )
                            ),
                          ]
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 2, 50, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            headers: <dynamic>[   'المصاريف الاداريه','فائده القرض','مدة القرض','مبلغ القرض'],
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss5,//itemsss6,itemsss7,itemsss8
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: PdfColor.fromHex("D3D3D3"),
                        margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss6,
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 0,
                      ),
                      Container(
                        color: PdfColor.fromHex("ADD8E6"),
                        margin: EdgeInsets.fromLTRB(50, 2, 50, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss7,
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      /////////

                      Container(
                        height: 0,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Center(
                                    child: Text('ثالثا مقارنه بين الفوائد المكتسبه والمدفوعه', style: TextStyle(

                                      fontSize: 15,
                                    ))
                                )
                            ),
                          ]
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(40, 2, 40, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            headers: <dynamic>[  "الفايده المكتسبة","المده بالشهور","معدل العائد","مبلغ الشهاده"],
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                             itemsss8,itemsss9,itemsss10
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss12,itemsss13
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: PdfColor.fromHex("90ee90"),
                        margin: EdgeInsets.fromLTRB(120, 2, 120, 2),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Table.fromTextArray(
                            headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                            cellAlignment: Alignment.center,
                            cellStyle: TextStyle(fontSize: 12),
                            data:
                            <List<dynamic>>[
                              itemsss11,
                              // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                  children: [
                                    Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Center(
                                            child: Text("الاسم:-"+" "+details2, style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                              fontSize: 15,
                                            ),textAlign: pw.TextAlign.center)
                                        )
                                    ),
                                    Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Center(
                                            child: Text(details3, style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                              fontSize: 15,
                                            ),textAlign: pw.TextAlign.center)
                                        )
                                    ),
                                  ]),
                              Container(
                                width: 15,
                              ),
                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text('أو تواصل معى ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                        fontSize: 15,
                                      ),textAlign: pw.TextAlign.center)
                                  )
                              ),
                              pw.BarcodeWidget(
                                  data: "https://api.whatsapp.com/send?phone=2$details3&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85%20%D9%84%D9%88%20%D8%B3%D9%85%D8%AD%D8%AA%20%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%A3%D8%AE%D8%B1%20",
                                  barcode: pw.Barcode.qrCode(),
                                  width: 150,
                                  height: 100
                              ),
                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text('أو اعمل سكان\n للكود دا ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                          fontSize: 15,
                                      ),textAlign: pw.TextAlign.center)
                                  )
                              ),
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: "https://api.whatsapp.com/send?phone=2$details3&text=%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85%20%D8%B9%D9%84%D9%8A%D9%83%D9%85%20%D9%84%D9%88%20%D8%B3%D9%85%D8%AD%D8%AA%20%D8%B9%D8%A7%D9%88%D8%B2%20%D8%A7%D8%AD%D8%B3%D8%A8%20%D9%85%D8%A8%D9%84%D8%BA%20%D8%A3%D8%AE%D8%B1%20",

                                      child:
                                      Container(
                                        // width: 100,
                                        height: 100,
                                        child: Image(profileImage),

                                      ))),



                            ]),),
                    ]
                )
            );
          }
      ));

  final String dir = (await getApplicationDocumentsDirectory()).path;
  final String path = '$dir/1.pdf';
  final File file = File(path);

  await file.writeAsBytes(await pdf.save());
  // await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
  await Printing.sharePdf(bytes: await pdf.save(), filename: '$details.pdf');



}

