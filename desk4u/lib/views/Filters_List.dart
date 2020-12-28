import 'package:flutter/material.dart';
import 'package:desk4u/modules/Logo.dart';
import 'package:desk4u/modules/Filter_Calendar.dart';
import 'package:desk4u/modules/Filter_Time.dart';
import 'package:desk4u/modules/Filter_Floor.dart';
import 'package:desk4u/modules/Filter_Room.dart';

class FiltersList extends StatefulWidget {
  @override
  _FiltersListState createState() => _FiltersListState();
}

class _FiltersListState extends State<FiltersList> {

  var titleList = [
    'Dzień',
    'Godziny rezerwacji',
    'Piętro',
    'Pokój',
    'Biurko',
  ];

  var widgetList = [
    FilterCalendar(),
    FilterTime(),
    FilterFloor(),
    FilterRoom(),
    Text('tu będzie rzut pokoju i wybór biurka')
    
  ];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
        title: Text(
          'Filtry',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          )
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[100],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Logo(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
             showDialogFunc(context, titleList[index], widgetList[index]).then((value) {
               SnackBar reservedData = SnackBar(content: Text('${titleList[index]}: $value'));
               ScaffoldMessenger.of(context).showSnackBar(reservedData);
             });
            },
            child: Card(
             child:
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            titleList[index],
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30.0,
                            color: Theme.of(context).accentColor,
                          ),
                        ],
                      ),
              ),
            ),
          );
        },
      )
    );
  }
}

Future<String> showDialogFunc(context, title, desc) {
  return showDialog(
    context: context,
    builder: (context){
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                desc,
              ],
            ),
          ),
        ),
      );
    }
  );
}
