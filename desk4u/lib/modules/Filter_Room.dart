import 'package:flutter/material.dart';

class FilterRoom extends StatefulWidget {
  @override
  _FilterRoomState createState() => _FilterRoomState();
}

class _FilterRoomState extends State<FilterRoom> {

  int _room;

  var roomList = [
    '#1',
    '#2',
    '#3',
    '#5',
    '#6',
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
          itemCount: roomList.length,
          itemBuilder: (context, index) {
            return Card(
              child:  Ink(
                color: _room == index ? Theme.of(context).accentColor : Colors.transparent,

                child: ListTile(
                  onTap: () {
                    setState(() {
                      _room = index;
                    });
                  },
                  title: Text(
                    roomList[index],
                    style: TextStyle(
                      fontSize: 20.0,
                      color: _room == index ? Colors.white : Theme.of(context).primaryColor,
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