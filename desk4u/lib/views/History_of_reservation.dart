import 'package:flutter/material.dart';
import 'package:desk4u/modules/Custom_Template.dart';
import 'package:flutter/painting.dart';


class HistoryOfReservation extends StatelessWidget {

  final String gifUrl = 'https://media1.tenor.com/images/da573c6c77ed52b63321e3788025d867/tenor.gif?itemid=12353147';


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height * 0.3;

    return CustomTemplate(
      childElement: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Historia Twoich rezerwacji',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      headingRowHeight: 30.0,
                      headingTextStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                        color: Theme.of(context).accentColor,
                      ),
                      horizontalMargin: 0.0,
                      columnSpacing: 15.0,
                      showBottomBorder: true,
                      sortColumnIndex: 0,
                        sortAscending: true,
                        columns: [
                          DataColumn(label: Text('Dzień')),
                          DataColumn(label: Text('Godziny')),
                          DataColumn(label: Text('Piętro')),
                          DataColumn(label: Text('Pokój')),
                          DataColumn(label: Text('Biurko')),
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(Text('2019-12-14')),
                              DataCell(Text('8.00-16.00')),
                              DataCell(Text('III')),
                              DataCell(Text('#2')),
                              DataCell(Text('#5')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('2019-12-12')),
                              DataCell(Text('9.00-17.00')),
                              DataCell(Text('II')),
                              DataCell(Text('#3')),
                              DataCell(Text('#2')),
                            ],
                          ),

                          DataRow(
                            cells: [
                              DataCell(Text('2019-12-10')),
                              DataCell(Text('10.00-18.00')),
                              DataCell(Text('I')),
                              DataCell(Text('#4')),
                              DataCell(Text('#4')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('2019-12-7')),
                              DataCell(Text('9.00-17.00')),
                              DataCell(Text('I')),
                              DataCell(Text('#1')),
                              DataCell(Text('#5')),
                            ],
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}