import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FilterDesk extends StatefulWidget {
  @override
  _FilterDeskState createState() => _FilterDeskState();
}

class _FilterDeskState extends State<FilterDesk> {

  String _deskSelected;
  int clickedDesk;

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
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/office.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
            Positioned(
              top: 18.0,
              left: 11.0,
              width: 65,
              height: 80,
              child: InkWell(
                onTap: () {
                  setState(() {
                    clickedDesk = 0;
                    _deskSelected = desksList[0];
                  });
                },
                child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: clickedDesk == 0 ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
                            width: clickedDesk == 0 ? 2 : 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/desk.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Text(
                      desksList[0],
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                  ),
                ),
              ),
            ),
              Positioned(
                top: 130.0,
                left: 11.0,
                width: 65,
                height: 80,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      clickedDesk = 1;
                      _deskSelected = desksList[1];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: clickedDesk == 1 ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
                          width: clickedDesk == 1 ? 2 : 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/desk.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      desksList[1],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 13.5,
                left: 114.0,
                width: 65,
                height: 80,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      clickedDesk = 2;
                      _deskSelected = desksList[2];
                    });
                  },
                  child: Transform.rotate(
                    angle: 3.14/2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: clickedDesk == 2 ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
                            width: clickedDesk == 2 ? 2 : 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/desk.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Transform.rotate(
                        angle: 11.0,
                        origin: Offset(0.0, -50.0),
                        child: Text(
                          desksList[2],
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100.0,
                right: 30.0,
                width: 65,
                height: 80,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      clickedDesk = 3;
                      _deskSelected = desksList[3];
                    });
                  },
                  child: Transform.rotate(
                    angle: 3.14,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: clickedDesk == 3 ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
                            width: clickedDesk == 3 ? 2 : 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/desk.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Transform.rotate(
                        angle: 3.14,
                        origin: Offset(0.0, -30.0),
                        child: Text(
                          desksList[3],
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 114.0,
                width: 65,
                height: 80,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      clickedDesk = 4;
                      _deskSelected = desksList[4];
                    });
                  },
                  child: Transform.rotate(
                    angle: 3.14/2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: clickedDesk == 4 ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
                            width: clickedDesk == 4 ? 2 : 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/desk.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Transform.rotate(
                        angle: -3.14/2,
                        origin: Offset(0.0, -50.0),
                        child: Text(
                          desksList[4],
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
    ),
        SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).pop('$_deskSelected');
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