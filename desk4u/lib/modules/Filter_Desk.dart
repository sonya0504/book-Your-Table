import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterDesk extends StatefulWidget {
  @override
  _FilterDeskState createState() => _FilterDeskState();
}

class _FilterDeskState extends State<FilterDesk> {

  int _deskSelected;
  String _desk;

  var desksList = [
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/office.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: GridView.builder(
            itemCount: desksList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
            ),
            itemBuilder: (context, index) => Card(
              child:  Ink(
                color: _deskSelected == index ? Theme.of(context).accentColor : Colors.transparent,

                child: ListTile(
                  onTap: () {
                    setState(() {
                      _deskSelected = index;
                      _desk = desksList[index];
                    });
                  },
                  title: Text(
                    desksList[index],
                    style: TextStyle(
                      fontSize: 20.0,
                      color: _deskSelected == index ? Colors.white : Theme.of(context).primaryColor,
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
              Navigator.of(context).pop('$_desk');
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