import 'package:flutter/material.dart';

class FilterRoom extends StatefulWidget {
  @override
  _FilterRoomState createState() => _FilterRoomState();
}

class _FilterRoomState extends State<FilterRoom> {

  int _roomSelected;
  String _room;

  var roomList = [
    '#1',
    '#2',
    '#3',
    '#4',
    '#5',
  ];

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height * 0.5;

    return Column(
      children: [
        Container(
          height: height,
          child: GridView.builder(
            itemCount: roomList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
            ),
            itemBuilder: (context, index) => Card(
              child:  Ink(
                color: _roomSelected == index ? Theme.of(context).accentColor : Colors.transparent,

                child: ListTile(
                  onTap: () {
                    setState(() {
                      _roomSelected = index;
                      _room = roomList[index];
                    });
                  },
                  title: Text(
                    roomList[index],
                    style: TextStyle(
                      fontSize: 20.0,
                      color: _roomSelected == index ? Colors.white : Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).pop('$_room');
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