// EXAMPLE use case for TextFieldSearch Widget
import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePagee(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePagee extends StatefulWidget {
  MyHomePagee({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageeState createState() => _MyHomePageeState();
}

class _MyHomePageeState extends State<MyHomePagee> {
  final _testList = [
    'ethad',
    'Test Item 2',
    'Test Item 3',
    'Test Item 4',
  ];

  TextEditingController myController = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
    myController2.addListener(_printLatestValue);
    myController3.addListener(_printLatestValue);
  }

  _printLatestValue() {
    print("text field: ${myController.text}");
    print("text field: ${myController2.text}");
    print("text field: ${myController3.text}");
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  // mocking a future
  Future<List> fetchSimpleData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    List _list = new List();
    // create a list from the text input of three items
    // to mock a list of items from an http call
    _list.add('اتحاد الاذاعة والتليفزيون' + ' 1');
    _list.add('اكاديمية اخبار اليوم' + '  2');
    _list.add('Test' + ' Item 3');

    return _list;
  }

  // mocking a future that returns List of Objects
  Future<List> fetchComplexData() async {
    await Future.delayed(Duration(milliseconds: 1000));
    List _list = new List();
    List _jsonList = [
      {'label': 'Text' + ' Item 1', 'value': 30},
      {'label': 'Text' + ' Item 2', 'value': 31},
      {'label': 'Text' + ' Item 3', 'value': 32},
    ];
    // create a list from the text input of three items
    // to mock a list of items from an http call where
    // the label is what is seen in the textfield and something like an
    // ID is the selected value
    _list.add(new TestItem.fromJson(_jsonList[0]));
    _list.add(new TestItem.fromJson(_jsonList[1]));
    _list.add(new TestItem.fromJson(_jsonList[2]));

    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16),
              TextFieldSearch(
                  label: 'Simple Future List',
                  controller: myController2,
                  future: () {
                    return fetchSimpleData();
                  }),
              SizedBox(height: 16),
              TextFieldSearch(
                label: 'Complex Future List',
                controller: myController3,
                future: () {
                  return fetchComplexData();
                },
                getSelectedValue: (item) {
                  print(item);
                },
                minStringLength: 5,
                textStyle: TextStyle(color: Colors.red),
                decoration: InputDecoration(hintText: 'Search For Something'),
              ),
              SizedBox(height: 16),
              TextFieldSearch(
                  initialList: _testList,
                  label: 'Simple List',
                  controller: myController),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Mock Test Item Class
class TestItem {
  String label;
  dynamic value;

  TestItem({this.label, this.value});

  factory TestItem.fromJson(Map<String, dynamic> json) {
    return TestItem(label: json['label'], value: json['value']);
  }
}