import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:desk4u/views/Home_Page.dart';
import 'package:desk4u/modules/Custom_Template.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:desk4u/views/Filters_List.dart';
import 'package:desk4u/views/Summary_Page.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

final ThemeData _themeData = new ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.grey[600],
  accentColor: Colors.deepOrange,
    fontFamily: 'Montserrat',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800, color: Colors.grey[600]),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'desk4u',
      theme: _themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => MainView(title: 'desk4u'),
        '/filters': (context) => FiltersList(),
        '/summary': (context) => SummaryPage(),
      },
    );
  }
}

class MainView extends StatefulWidget {
  MainView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      childElement: HomePage(),
    );
  }
}

// todo AppBar profilowe i menu - view nic tu nie ma
