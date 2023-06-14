import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:table_calendar/table_calendar.dart';
import '../components/calendar/calendar.dart';
import 'main.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(home: Calendar()));
// }

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime hoje = DateTime.now();

  void _diaSelecionado(DateTime dia, DateTime diaFocado) {
    setState(() {
      hoje = dia;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,

        appBar: AppBar(
          // toolbarHeight: 100,
          backgroundColor: Color(0xFF4C999E),
          leading: IconButton(
            icon: Image.asset('lib/assets/icons/icon-back.png'),
            iconSize: 36,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => App()),
              ),
            },
          ),

          title: Text(
              'Planner calendar',
              style: TextStyle(
                // fontFamily: 'Inter',
                fontSize: 24,
              ),

              textAlign: TextAlign.left,
          ),

        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Calendario(hoje),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0XFF4C999E),
          onPressed: () => {},
        ),
      ),
    );
  }

  
}
