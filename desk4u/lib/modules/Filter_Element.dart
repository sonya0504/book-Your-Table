import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FilterElement extends StatelessWidget {
  FilterElement({this.filterTitle, this.filterBody});

  final Widget filterTitle;
  final Widget filterBody;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.VERTICAL,
      front: Card(
        child: ListTile(
          title: filterTitle,
          leading: Icon(Icons.arrow_drop_down,
            size: 30.0,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      back: Card(
        child: ListTile(
          title: filterTitle,
          leading: Icon(
              Icons.arrow_drop_up,
              size: 30.0,
              color: Theme.of(context).accentColor,
          ),
          subtitle: filterBody,
          dense: true,
        ),
        ),
    );
  }
}
