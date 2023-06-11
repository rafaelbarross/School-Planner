import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_planner/components/show_dialog/show_dialog.dart';
import 'materias.dart';

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
    return Scaffold(
      // HEADER APP BAR
      appBar: AppBar(
        backgroundColor: Color(0xFF00A4BA),
        title: Row(children: [
          Image.asset('lib/assets/icons/logo.png'),
          // Padding(padding: padding)
          SizedBox(width: 5),
          Text(
            "School Planner",
            style: GoogleFonts.inter(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              color: Color(0xFF292D32),
            ),
          ),
        ]),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFF292D32),
          size: 36,
        ),
        actions: [
          IconButton(
            icon: Image.asset('lib/assets/icons/menu-home.png'),
            color: Color(0xFF292D32),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Add stories to \nthe button",
          style: TextStyle(
            fontSize: 29,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
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
    );
  }
}