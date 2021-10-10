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


Future<void> generateAndPrintArabicPdf({String details,String bookNum,String replay,String date,String subject,List<String>items, List<String> itemss, List<String> itemsss, List<String> itemsss4, List<String> itemsss5,List<String> itemsss6, List<String> itemsss7, List<String> itemsss8, String details2, String details3,}) async {
  final Document pdf = Document();

  final profileImage = MemoryImage(
    (await rootBundle.load('assets/classic.jpg')).buffer.asUint8List(),
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
                                child: Text('CREDIT CARD OFFER ', style: TextStyle(

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
                    height: 10,
                  ),
                  Center(
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width: 100,
            height: 100,
            child: Image(togar2),
          ),
          Container(
            // width: 100,
            height: 100,
            child: Image(togar4),
          ),
        Container(
        // width: 100,
        height: 100,
        child: Image(profileImage),
        ),
          Container(
            // width: 100,
            height: 100,
            child: Image(togar5),
          ),
          Container(
            // width: 100,
            height: 100,
            child: Image(togar3),
          ),
        ]),),
                  Container(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('ماستر كارد جولد', style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('نوع  الكارت : ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
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
                                child: Text(" $subject  جم  ", style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('الحد الإتمانى للكارت :   ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
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
                                child: Text(' **** مزايــــا الكــــارت العامه **** ', style: TextStyle(
                                    fontSize: 18,
                                ),
                                )
                            )
                        ),
)
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
                                  child: Text(' إمكانية استخدام البطاقة في عمليات الشراء والسحب النقدي محليا ودولياً والسداد بالجنية المصري.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' أطول فترة سداد للمشتريات تصل الى 57 يوم.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' اقل نسبة سداد  % 5  من اجمالى المستحقات.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' إمكانية استخدام % 100  من الحد الائتماني للبطاقة في السحب النقدي.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' إمكانية استخدام البطاقة على شبكة الانترنت طبقاً للحدود المقررة.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' إمكانية انشاء/تغيير الرقم السري عن طريق الـخدمه الصوتيه', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' تقسيط عمليات المشتريات طبقا للفترة التي يحددها العميل 36 - 24 -  12 - 6 شهر\n بفائدة % 1.7  شهرياً.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' يتم التقسيط من خلال التجار المتعاقدين مع البنك علي 24 - 12 - 6 شهر بدون فوائد.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' تقسيط عمليات السحب النقدى طبقا للفترة التي يحددها العميل 36 - 24 -  12 - 6 شهر\n بفائدة % 2.17  شهرياً.', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' طرق متعددة لسداد استخدامات البطاقة من خلال فروع البنك  - الات ATM الايداع المنتشره \n بمختلف انحاء الجمهوريه - من خلال الانترنت البنكى ', style: TextStyle(
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
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(' برنامج مكافات بنك مصر يتم منح نقاط مكافات عن كل عملية مشتريات حسب نوع البطاقة', style: TextStyle(
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
                        Container(
                          width: 300,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text(' **** مزايــــا الكــــارت الخاصه **** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Container(
                    // width: 100,
                    height: 1,
                  ),
        Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
        child: Text('عروض وتخفيضات في أرقي المراكز التجارية داخل وخارج مصر وللتعرف عليها يقوم العميل\n بالدخول علي الموقع الالكتروني www.visamidleeeast.com/visaplatinum  أو  من \n خلال التطبيق الخاص  بمؤسسة فيزا الدولية والذي يتم تحميله من علي\n التليفون المحمول      VISA EXPLORE  ', style: TextStyle(
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
                    // width: 100,
                    height: 1,
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
                                  child: Text('  **** برنامج المكافأت بنك مصر  **** ', style: TextStyle(
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
                                child: Text('  واحد جنيه =   نقطة  1', style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('عمليات الشراء داخل مصر :    ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                    fontSize: 17
                                ))
                            )
                        ),

                      ]
                  ),
                  Container(
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('  واحد جنيه =   نقطة  1', style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('عمليات الشراء خارج مصر :    ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
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
                    margin: EdgeInsets.fromLTRB(100, 2, 100, 2),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Table.fromTextArray(
                        headerStyle: TextStyle(fontSize: 12),headerAlignment: Alignment.center,
                        headers: <dynamic>[ 'البيان','النوع '],
                        cellAlignment: Alignment.center,
                        cellStyle: TextStyle(fontSize: 12),
                        data:
                        <List<dynamic>>[
                          items,itemss,itemsss,itemsss4,itemsss5,itemsss6,itemsss7,itemsss8
                          // <dynamic>['34/44','الحمد لله','لاجراء اللازم','ادارة الحاسب', '10/11' ,'الدعم الفني', '١' ],
                        ],
                      ),
                    ),
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
                                  child: Text('  **** تحميل التطبيقات - نظام اندرويد  **** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('برجاء مسح الباركود التاليه أو الضغط على الصوره للتحميل.  ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                    fontSize: 17
                                ))
                            )
                              ),
                            ]
                        ),

                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [


                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://www.bmrewardsclub.com/',
                                            child:
                                    Container(
                                      // width: 100,
                                      height: 130,
                                      child: Image(profileImage3),
                                    ))),

                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://www.bmrewardsclub.com/',
                                            child:
                                            Directionality(
                                                textDirection: TextDirection.rtl,
                                                child: Center(
                                                    child: Text(' BM Rewards ', style: TextStyle(
                                                      fontSize: 18,
                                                      color: PdfColors.blue,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    )
                                                )
                                            ))),
                                  ]),
                              Container(
                                width: 5,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://play.google.com/store/apps/details?id=com.visa.asiapacific',
                                            child:
                                    Container(
                                      // width: 100,
                                      height: 130,
                                      child: Image(profileImage4),
                                    ))),

                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://play.google.com/store/apps/details?id=com.visa.asiapacific',
                                            child:
                                            Directionality(
                                                textDirection: TextDirection.rtl,
                                                child: Center(
                                                    child: Text(' VISA Explore', style: TextStyle(
                                                      fontSize: 18,
                                                      color: PdfColors.blue,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    )
                                                )
                                            ))),
                                  ]),
                              Container(
                                width: 5,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://play.google.com/store/apps/details?id=com.BanqueMisr.MobileBanking',
                                            child:
                                    Container(
                                      // width: 100,
                                      height: 130,
                                      child: Image(profileImage5),
                                    ))),

                                    pw.Align(
                                        alignment: pw.Alignment.topLeft,
                                        child: pw.UrlLink(
                                            destination: 'https://play.google.com/store/apps/details?id=com.BanqueMisr.MobileBanking',
                                            child:
                                            Directionality(
                                                textDirection: TextDirection.rtl,
                                                child: Center(
                                                    child: Text(' BM Online', style: TextStyle(
                                                      fontSize: 18,
                                                      color: PdfColors.blue,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                    )
                                                )
                                            ))),
                                  ]),
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

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 330,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text('  **** تحميل التطبيقات - لمستخدمى ايفون  **** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('برجاء مسح الباركود التاليه أو الضغط على الصوره للتحميل.  ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                    fontSize: 17
                                ))
                            )
                        ),
                      ]
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://www.bmrewardsclub.com/',
                                      child:
                              Container(
                                // width: 100,
                                height: 130,
                                child: Image(profileImage3),
                              ),
                                      )),
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://www.bmrewardsclub.com/',
                                      child:
                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Center(
                                      child: Text(' BM Rewards ', style: TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.blue,
                                        decoration: TextDecoration.underline,
                                      ),
                                      )
                                  )
                              ))),
                            ]),
                        Container(
                          width: 5,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://apps.apple.com/us/app/visa-explore/id704133884',
                                      child:
                              Container(
                                // width: 100,
                                height: 130,
                                child: Image(visa),
                              ))),

                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://apps.apple.com/us/app/visa-explore/id704133884',
                                      child:
                                      Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Center(
                                              child: Text(' VISA Explore ', style: TextStyle(
                                                fontSize: 18,
                                                color: PdfColors.blue,
                                                decoration: TextDecoration.underline,
                                              ),
                                              )
                                          )
                                      ))),
                            ]),

                        Container(
                          width: 5,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://apps.apple.com/us/app/bm-online/id1462899730',
                                      child:
                              Container(
                                // width: 100,
                                height: 130,
                                child: Image(profileImage7),
                              ))),

                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://apps.apple.com/us/app/bm-online/id1462899730',
                                      child:
                                      Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Center(
                                              child: Text(' BM Online ', style: TextStyle(
                                                fontSize: 18,
                                                color: PdfColors.blue,
                                                decoration: TextDecoration.underline,
                                              ),
                                              )
                                          )
                                      ))),
                            ]),
                      ]),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          color: PdfColor.fromHex("D3D3D3"),
                          margin: const EdgeInsets.all(10.0),
                          child:

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                  child: Text('  **** التجار المتعاقدين على خدمه التقسيط بدون فوائد  **** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                    destination: 'https://www.banquemisr.com/ar/smes/cards/Documents/%D8%AA%D8%AC%D8%A7%D8%B1%20%D8%A7%D9%84%D8%AA%D9%82%D8%B3%D9%8A%D8%B7%2005042017.pdf?csrt=3624335392976234842',
                                    child:
                              Container(
                                // width: 100,
                                height: 130,
                                child: Image(togar),
                              ),
                                  ) ),
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                      destination: 'https://www.banquemisr.com/ar/smes/cards/Documents/%D8%AA%D8%AC%D8%A7%D8%B1%20%D8%A7%D9%84%D8%AA%D9%82%D8%B3%D9%8A%D8%B7%2005042017.pdf?csrt=3624335392976234842',
                                      child:Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Text(
                                        'التجار المتعاقدين',
                                        style: TextStyle(
                                          color: PdfColors.blue,
                                            decoration: TextDecoration.underline,
                                        ),
                                      ))),

                                  )]),
                        Container(
                          width: 5,
                        ),

                      ]),
                  Container(
                    height: 3,
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
                                  child: Text(' **** للتواصل ومزيد من الاستفسارات**** ', style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  )
                              )
                          ),
                        )
                      ]
                  ),
                  Container(
                    // width: 100,
                    height: 1,
                  ),


                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(details2.toString().replaceAll('‏', ''), style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('الإســــــم :    ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                    fontSize: 17
                                ))
                            )
                        ),

                      ]
                  ),
                  Container(
                    height: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text(details3.toString().replaceAll('‏', ''), style: TextStyle(
                                    fontSize: 17
                                ))
                            )
                        ),
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Center(
                                child: Text('رقم الهاتف :    ', style: TextStyle(color:PdfColor.fromRYB(1, 0, 0) ,
                                    fontSize: 17
                                ))
                            )
                        ),

                      ]
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              pw.Align(
                                  alignment: pw.Alignment.topLeft,
                                  child: pw.UrlLink(
                                    destination: 'https://www.banquemisr.com/ar/pages/creditcardrequests.aspx',
                                    child:
                                    Container(
                                      // width: 100,
                                      height: 130,
                                      child: Image(apply),
                                    ),
                                  ) ),


                              ]),
                        Container(
                          width: 5,
                        ),

                      ]),
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
  await Printing.sharePdf(bytes: await pdf.save(), filename: 'visa gold.pdf');

}

