import 'package:flutter/material.dart';
import 'package:desk4u/modules/Logo.dart';

class CustomTemplate extends StatefulWidget {

  CustomTemplate({this.childElement});

  final Widget childElement;

  @override
  _CustomTemplateState createState() => _CustomTemplateState();
}

class _CustomTemplateState extends State<CustomTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/history');
            },
            child: Image.asset(
              'assets/images/profile.png',
              width: 40,
              height: 40,
              fit: BoxFit.contain,
              colorBlendMode: BlendMode.darken,
              semanticLabel: 'Your image',

            ),
          ),
        ),
        title: Logo(),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/menu');
            },
            icon: Icon(
              Icons.menu,
              size: 30.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      body: widget.childElement,
    );
  }
}
