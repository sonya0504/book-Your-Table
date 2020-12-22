import 'package:flutter/material.dart';

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
  String _branch;

  void _chooseBranch() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'assets/images/profile.png',
            width: 40,
            height: 40,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.darken,
            semanticLabel: 'Your image',
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: 'desk',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
            ),
            children: [
              TextSpan(
                  text: '4',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 30.0,
                  ),
              ),
              TextSpan(
                text: 'u',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              size: 30.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              'Wybierz oddział:',
              style: TextStyle(
                fontSize: 30.0,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w800,
              )
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _branch = 'sudecka';
              });
              print('click $_branch');
            },
            child: Column(
                children: [
                Image.asset(
                'assets/images/deviniti-logo.png',
                width: 300,
                height: 80,
                fit: BoxFit.contain,
                colorBlendMode: BlendMode.darken,
                semanticLabel: 'Deviniti',
                ),
                  Text(
                    'sudecka',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
            ],
          ),
          ),
      GestureDetector(
        onTap: () {
          setState(() {
            _branch = 'debowa';
          });
          print('click $_branch');
        },
        child: Column(
          children: [
                  Image.asset(
                    'assets/images/deviniti-logo.png',
                    width: 300,
                    height: 80,
                    fit: BoxFit.contain,
                    colorBlendMode: BlendMode.darken,
                    semanticLabel: 'Deviniti',
                  ),
                  Text(
                    'dębowa',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ],
        ),
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _branch = 'sp-sudecka';
          });
          print('click $_branch');
        },
        child: Column(
          children: [
                  Image.asset(
                    'assets/images/logo-sp.png',
                    width: 300,
                    height: 80,
                    fit: BoxFit.contain,
                    colorBlendMode: BlendMode.darken,
                    semanticLabel: 'SerwisPrawa',
                  ),
                  Text(
                    'sudecka',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
        ),
        ],
      ),
    ),
      );
  }
}
