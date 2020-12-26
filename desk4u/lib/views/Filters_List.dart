import 'package:flutter/material.dart';
import 'package:desk4u/modules/Filter_Calendar.dart';

class ListViewHomePage extends StatefulWidget {
  @override
  _ListViewHomePageState createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {

  var titleList = [
    'Dzień',
    'Godziny rezerwacji',
    'Piętro',
    'Pokój',
    'Biurko',
  ];

  var widgetList = [
    FilterCalendar(),
    Text('Tu będzie zegar'),
    Text('tu będzie wybór piętra'),
    Text('tu będzie wybór nr pokoju'),
    Text('tu będzie rzut pokoju i wybór biurka')
    
  ];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filtry',
          style: TextStyle(
            color: Colors.grey,
          )
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
             showDialogFunc(context, titleList[index], widgetList[index]);
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

showDialogFunc(context, title, desc) {
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
