import 'package:flutter/material.dart';
import 'package:desk4u/modules/Logo.dart';
import 'package:desk4u/modules/Custom_branch.dart';

class CustomTemplate extends StatefulWidget {
  CustomTemplate({Key key, this.childElement}) : super(key: key);

  final childElement;

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
          child: Image.asset(
            'assets/images/profile.png',
            width: 40,
            height: 40,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.darken,
            semanticLabel: 'Your image',
          ),
        ),
        title: Logo(),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                  'Wybierz oddział:',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                  )
              ),
            ),
            CustomBranch(branchImg: 'assets/images/deviniti-logo.png', branchAddress: 'sudecka', branchName: 'Deviniti'),
            CustomBranch(branchImg: 'assets/images/deviniti-logo.png', branchAddress: 'debowa', branchName: 'Deviniti'),
            CustomBranch(branchImg: 'assets/images/logo-sp.png', branchAddress: 'sp-sudecka', branchName: 'SerwisPrawa'),
          ],
        ),
      ),
    );
  }
}
