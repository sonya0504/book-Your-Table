import 'package:desk4u/views/Filters_Page.dart';
import 'package:desk4u/views/Home_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:desk4u/modules/Custom_Template.dart';

void main() {
  runApp(MyApp());
}

final ThemeData _themeData = new ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.grey[600],
  accentColor: Colors.deepOrange,
    fontFamily: 'Montserrat',

);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'desk4u',
      theme: _themeData,
      home: MyHomePage(title: 'desk4u'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      childElement: FiltersPage(),
    );
  }
}
