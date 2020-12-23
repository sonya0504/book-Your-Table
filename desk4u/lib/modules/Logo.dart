import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
