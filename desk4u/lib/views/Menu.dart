import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:desk4u/modules/Custom_Template.dart';


class Menu extends StatelessWidget {

  final String gifUrl = 'https://media1.tenor.com/images/da573c6c77ed52b63321e3788025d867/tenor.gif?itemid=12353147';

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
      childElement: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                  'Ups.. Tu jeszcze nic nie ma!',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Ale poczekaj na gif-a',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Za 3, 2, 1...',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.network(
                  gifUrl,
                semanticLabel: 'Tu jeszcze nic nie ma...',
                width: 250,
                height: 250,
              ),
            ],
          ),
        )
      ),
    );
  }
}
