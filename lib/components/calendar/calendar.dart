import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

Widget Calendario(hoje) {
  return Column(
    children: [
      Container(
        child: TableCalendar(
          headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
          
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (dia) => isSameDay(dia, hoje),
          focusedDay: hoje,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          // onDaySelected: _diaSelecionado,

          calendarStyle: CalendarStyle(

            selectedTextStyle: TextStyle(
              color: Colors.black,
            ),
              selectedDecoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3,
                color: Color(0xFF4C999E),
              ))),
              tableBorder: TableBorder(
                  bottom: BorderSide(width: 1, color: Colors.black))),
        ),
      ),
      SizedBox(height: 15),
      Container(
        child: Row(
          children: [
            Icon(Icons.circle, color: Color(0xFF4C999E), size: 10),
            SizedBox(width: 5),
            Text(
              'Apresentação do Tarsis',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
