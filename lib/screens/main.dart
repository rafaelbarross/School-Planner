import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../components/listOfMaterias/list_materia.dart';
import '../components/show_dialog/show_dialog.dart';
import '../screens/materia.dart';
import 'calendario.dart';
import 'materia.dart';

void main() {
  runApp(MaterialApp(home: App()));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    // String texto = "Olá";
    return MaterialApp(
      home: Scaffold(
        // HEADER APP BAR
        appBar: AppBar(
          // toolbarHeight: 86,
          backgroundColor: const Color(0xFF00A4BA),
          title: Row(children: [
            Image.asset('lib/assets/icons/SchoolPlanner.png'),
            // Padding(padding: padding)
            const SizedBox(width: 10),
            Text(
              "School Planner",
              style: GoogleFonts.inter(
                fontSize: 25,
                color: const Color(0xFF292D32),
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Color(0xFF292D32),
            size: 36,
          ),
          actions: [
            IconButton(
              alignment: Alignment.centerRight,
              icon: Image.asset('lib/assets/icons/calendar.png'),
              color: const Color(0xFF292D32),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calendar()),
                ),
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListMateria(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),

        // body: Center(
        //   child: Text(
        //     "Adicione matérias\nno botão",
        //     style: TextStyle(
        //       fontSize: 29,
        //       color: Color.fromRGBO(0, 0, 0, 0.25),
        //     ),
        //   ),
        // ),
        floatingActionButton: Container(
          height: 65,
          width: 65,
          // margin: EdgeInsets.only(bottom: 100, right: 40),
          // padding: EdgeInsets.all(25),
          child: FloatingActionButton(
            backgroundColor: Color(0xFF292D32),
            child: Image.asset('lib/assets/icons/button-floating.png'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
