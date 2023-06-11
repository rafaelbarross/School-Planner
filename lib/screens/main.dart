import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:school_planner/components/show_dialog/show_dialog.dart';
import '../screens/materia.dart';
import '../components/listOfMaterias/list_materia.dart';

void main() {
  runApp(MaterialApp(home: App()));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF00A4BA),
          title: Row(
            children: [
              Image.asset('lib/assets/icons/SchoolPlanner.png'),
              const SizedBox(width: 10),
              Text(
                "School Planner",
                style: GoogleFonts.inter(
                  fontSize: 29,
                  color: const Color(0xFF292D32),
                ),
              ),
            ],
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Color(0xFF292D32),
            size: 36,
          ),
          actions: [
            IconButton(
              alignment: Alignment.centerRight,
              icon: Image.asset('lib/assets/icons/menu-home.png'),
              color: const Color(0xFF292D32),
              onPressed: () {},
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
        floatingActionButton: Container(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF292D32),
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
