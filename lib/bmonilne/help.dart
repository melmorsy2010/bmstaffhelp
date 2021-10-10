import 'package:bmstaffhelp/creditcardoffers/light_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SearchListExample extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}

class _SearchListExampleState extends State<SearchListExample> {
  Widget appBarTitle = new Text(
    "بحث",
    style: new TextStyle(color: Colors.white),
  );
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final globalKey = new GlobalKey<ScaffoldState>();

  final TextEditingController _controller = new TextEditingController();
  List<dynamic> _list;
  List<dynamic> _list2;


  bool _isSearching;
  String _searchText = "";
  List searchresult = new List();
  List searchresult2 = new List();

  _SearchListExampleState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    values();
    values2();


  }

  void values() {
    _list = List();
  
    _list.add(" حسابكم معلق مؤقتا");
    _list.add("حدود التحويل بالجنيه المصرى Ach للبنوك المحليه يومى ");
    _list.add("حدود التحويل بالجنيه المصرى Ach للبنوك المحليه شهرى");
    _list.add("حدود التحويل بين حسابات العميل داخل بنك مصر");
    _list.add("حدود التحويل بالعملات المختلفه Swift سويفت   يومى");
    _list.add("حدود التحويل بالعملات المختلفه Swift سويفت   شهرى");
    _list.add("Hong Kong dollar");
  }
  void values2() {
    _list2 = List();

    _list2.add(" الاتصال بخدمه العملاء 19888 لحل المشكله ");
    _list2.add("الحد الاقصى اليومى 10 تحويلات بقيمه اجماليه 750 الف جم");
    _list2.add("الحد الأقصى الشهرى 50 تحويل بقيمه اجماليه 15 مليون جم ");
    _list2.add("لا يوجد حدود للتحويل بين حسابات العميل داخل بنك مصر");
    _list2.add("الحد الاقصى اليومى 10 تحويلات بقيمه مليون جم او مايعادلها من العملات الاجنبيه");
    _list2.add("الحد الاقصى الشهرى 50 تحويل بقيمه اجماليه 15 مليون جم او ما يعادلها بالعملات الاجنبيه");
    _list2.add("Hong Kong dollar");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
backgroundColor: Colors.white,
        key: globalKey,

        appBar: buildAppBar(context),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                        new Flexible(
                            child: searchresult.length != 0 || _controller.text.isNotEmpty
                                ? new ListView.builder(
                              shrinkWrap: true,
                              itemCount: searchresult.length,
                              itemBuilder: (BuildContext context, int index) {
                                String listData = searchresult[index];
                                String listData2 = searchresult2[index];

                                return Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                                  child: new ListTile(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                    selected: true,
                                    selectedTileColor: Colors.grey[300],
                                    title: new Text(listData.toString(),style: GoogleFonts.cairo(color: LightColors.kDarkBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                                    subtitle: new Text(listData2.toString(),style: GoogleFonts.cairo(color: LightColors.kRed,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),

                                  ),
                                );

                    },
                  )
                      : new ListView.builder(
                    shrinkWrap: true,
                    itemCount: _list.length,

                    itemBuilder: (BuildContext context, int index) {
                      String listData = _list[index] ;
                      String listData2 = _list2[index] ;

                      return Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                        child: new ListTile(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          selected: true,
                          selectedTileColor: Colors.grey[300],
                          title: new Text(listData.toString(),style: GoogleFonts.cairo(color: LightColors.kDarkBlue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                          subtitle: new Text(listData2.toString(),style: GoogleFonts.cairo(color: LightColors.kRed,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),

                        ),
                      );
                    },
                  ),

                        )
            ],
          ),
        ));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
        backgroundColor: LightColors.kRed,
        centerTitle: true, title: appBarTitle, actions: <Widget>[
      new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "بحث عن المشكله",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    searchresult.clear();
    searchresult2.clear();

    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i] ;
        String data2 = _list2[i] ;

        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(data );
          searchresult2.add(data2 );

        }
      }
    }
  }
}