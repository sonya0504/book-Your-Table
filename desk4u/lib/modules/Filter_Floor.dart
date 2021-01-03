import 'package:flutter/material.dart';

class FilterFloor extends StatefulWidget {
  @override
  _FilterFloorState createState() => _FilterFloorState();
}

class _FilterFloorState extends State<FilterFloor> {

  int _floorSelected;
  String _floor;

  var floorsList = [
    'I',
    'II',
    'III',
    'IV',
    'V',
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: floorsList.length,
          itemBuilder: (context, index) {
            return Card(
                child:  Ink(
                  color: _floorSelected == index ? Theme.of(context).accentColor : Colors.transparent,

                  child: ListTile(
                    onTap: () {
                      setState(() {
                        _floor = floorsList[index];
                        _floorSelected = index;
                      });
                    },
                    title: Text(
                      'Piętro ${floorsList[index]}',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: _floorSelected == index ? Colors.white : Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                );
          },
        ),
        SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).pop('$_floor');
            },
            color: Theme.of(context).accentColor,
            child: Text(
                'Wybierz',
                style: TextStyle(
                  color: Colors.white,
                )
            ),
          ),
        ),
      ],
    );
  }
}