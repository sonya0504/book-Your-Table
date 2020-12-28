import 'package:flutter/material.dart';

class FilterFloor extends StatefulWidget {
  @override
  _FilterFloorState createState() => _FilterFloorState();
}

class _FilterFloorState extends State<FilterFloor> {

  int _floor;

  var floorList = [
    'Piętro I',
    'Piętro II',
    'Piętro III',
    'Piętro IV',
    'Piętro V',
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
          itemCount: floorList.length,
          itemBuilder: (context, index) {
            return Card(
                child:  Ink(
                  color: _floor == index ? Theme.of(context).accentColor : Colors.transparent,

                  child: ListTile(
                    onTap: () {
                      setState(() {
                        _floor = index;
                      });
                    },
                    title: Text(
                      floorList[index],
                      style: TextStyle(
                        fontSize: 20.0,
                        color: _floor == index ? Colors.white : Theme.of(context).primaryColor,
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
                'Zarezerwuj',
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