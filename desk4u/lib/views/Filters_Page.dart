import 'package:flutter/material.dart';
import 'package:desk4u/modules/Filter_Element.dart';
import 'package:desk4u/modules/Filter_Calendar.dart';

class FiltersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          FilterElement(
            filterTitle: Text('Dzień'),
            filterBody: FilterCalendar(),
          ),
          FilterElement(
            filterTitle: Text('Godziny rezerwacji'),
            filterBody: FilterCalendar(),
          ),
          FilterElement(
            filterTitle: Text('Piętro'),
            filterBody: FilterCalendar(),
          ),
          FilterElement(
            filterTitle: Text('Pokój'),
            filterBody: FilterCalendar(),
          ),
          FilterElement(
            filterTitle: Text('Biurko'),
            filterBody: FilterCalendar(),
          ),
        ],
      )
    );
  }
}
