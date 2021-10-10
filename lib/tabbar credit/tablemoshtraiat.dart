import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmstaffhelp/tabbar credit/tablemodelmoshtrait.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

class TablePage4 extends StatefulWidget {
  final List<CreditTableModel4> creditTableList4;
  final double creditAmount2;
  final int creditTerm2;
  final String type2;

  final double interest2;
  final double bsmv2;
  final double kkdf2;
  final double installment2;
  final Color themeColor;
  final Color labelColor;
  final double begining2;
  final double total2;
  final double totalcost2;
  final double flatrate2;
  final double totalinstallment2;
  final double totalcoost2;

  TablePage4({
    this.creditTableList4,
    this.creditAmount2,
    this.creditTerm2,
    this.type2,
    this.interest2,
    this.bsmv2,
    this.kkdf2,
    this.installment2,
    this.themeColor,
    this.labelColor,
    this.begining2,
    this.total2,
    this.totalcost2,
    this.flatrate2,
    this.totalinstallment2,
    this.totalcoost2
  });

  @override
  _TablePage4State createState() => _TablePage4State();
}

class _TablePage4State extends State<TablePage4> {
  // todo: for localizations
  // todo: String ifadeler yerine localization bilgisi girilebilir
  String tableAppBarTitle = "تفاصيل التقسيط";
  String creditAmountText = "المبلغ المسحوب ";
  String installmentText = "القسط الشهرى";
  String creditTermText = "مده التقسيط";
  String creditTermText2 = "نوع المده";

  String bsmvText = "عموله السداد المعجل";
  String kkdfText = "الاصل المتبقى";
  String creditInterestText = "معدل الفايده";
  String periodText = "مسلسل";
  String mainMoneyText = "الاصل";
  String interestText = "الفايده";
  String remainingMainMoneyText = "اجمالى السداد";
  String moneyType = " TL";
  String beginingtext = "اجمالى السداد";
  String totalinterest = "اجمالى الفايده المدفوعه";
  String totalinstallment = "اجمالى الاقساط المدفوعه";
  String totalcoost = "اجمالى التكلفه المدفوعه";

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: widget.themeColor ?? Colors.red,
        title: Text(tableAppBarTitle,style: TextStyle(color: widget.labelColor ?? Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
          color: widget.labelColor ?? Colors.white, //change your color here
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[


            //GestureDetector(
            // child: Container(height: 50,width: 50,color: Colors.red,)),
            ExpansionTile(
              title: Text("CUSTOMER OFFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              subtitle: Text("اضغط للاطلاع على عرض العميل"),
              children: [
                RepaintBoundary(
                  key: previewContainer,

                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 5,),

                            Expanded(
                              child: Center(
                                child: Text(
                                  "عزيزى العميل: مرفق لسيادتكم العرض الخاص بكم",
                                  textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey,),

                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 5,),

                            Expanded(
                              child: Text(
                                " تفاصيل التقسيط",
                                textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.creditAmount2.toStringAsFixed(0),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("المبلغ المسحوب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.creditTerm2.toStringAsFixed(0),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("مده التقسيط",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.type2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("نوع المده ( شهور ام سنوات )",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.installment2.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("القسط الشهرى",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.total2.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("اجمالى الفايده المدفوعه",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.begining2.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("اجمالى القرض + الفوائد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                child: Center(child: Text(widget.flatrate2.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13 ,color: Colors.white),)),
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                child: Center(child: Text("الفايده الثابته",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white ),)),
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(0),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                      child: RaisedButton(
                          child: Text("Share offer!"),
                          onPressed: () {
                            ShareFilesAndScreenshotWidgets().shareScreenshot(
                                previewContainer,
                                originalSize,
                                "Title",
                                "Name.png",
                                "image/png",
                                text: "this is your offer");
                          })),
                ),
              ],
            ),


            Card(
              color: Colors.white,
              elevation: 11,
              margin: EdgeInsets.all(11),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(

                  child: dataBodyTitle(),
                ),
              ),
            ),
            Card(
              color: Colors.white,

              elevation: 11,
              margin: EdgeInsets.all(11),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey)
                    ),
                    child: dataBody(),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget dataBodyTitle() {
    return DataTable(
      columnSpacing: 5,

      columns: <DataColumn>[
        DataColumn(
            label: Text(
              creditAmountText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold,),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditTermText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditTermText2,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              creditInterestText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              bsmvText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),

        DataColumn(
            label: Text(
              installmentText,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              totalinterest,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              beginingtext,
              style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
      ],
      rows: <DataRow>[
        DataRow(
          cells: [
            DataCell(
              Center(child: Text(widget.creditAmount2.toStringAsFixed(2),style: TextStyle(color: Colors.black,),)),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.creditTerm2.toString(),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.type2,style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.interest2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.bsmv2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),

            DataCell(
              Center(child: Text(widget.installment2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.total2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Center(child: Text(widget.begining2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
              showEditIcon: false,
              placeholder: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget dataBody() {
    return DataTable(
      dividerThickness: 2,

      dataRowHeight: 40,
      headingTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
      columnSpacing: 5,
      columns: <DataColumn>[

        DataColumn(
            label: Center(
              child: Text(
                periodText,
                style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                installmentText,
                style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                mainMoneyText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                interestText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                kkdfText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                bsmvText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                remainingMainMoneyText,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                totalinstallment,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Center(
              child: Text(
                totalcoost,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
        DataColumn(
            label: Text(
              periodText,
              style: TextStyle(color: Colors.black, fontSize: 16),textAlign: TextAlign.center,
            ),
            numeric: false,
            tooltip: "",
            onSort: (i, b) {}),
      ],
      rows: widget.creditTableList4
          .map((dataRow) => DataRow(cells: [

        DataCell(
          Center(
            child: Text(
              (widget.creditTableList4.indexOf(dataRow) + 1).toString(),style: TextStyle(color: Colors.black,),),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(
            child: Text(dataRow.installment2.toStringAsFixed(2),style:
            TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(

          Text(dataRow.mainCurrency2.toStringAsFixed(2),style:
          TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.interest2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.mainRemainingMoney2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.bsmv2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.kkdf2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.totalinstallment2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(child: Text(dataRow.totalcoost2.toStringAsFixed(2),style: TextStyle(color: Colors.black,))),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Center(
            child: Text(
                (widget.creditTableList4.indexOf(dataRow) + 1).toString(),style: TextStyle(color: Colors.black,)),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
      ]))
          .toList(),
    );
  }
}

