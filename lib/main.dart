import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
 String texto = " ";

  @override
  Widget build(BuildContext context) {
    String texto = "Olá";
    return MaterialApp(
      home: Scaffold(
        // HEADER APP BAR
        appBar: AppBar(
          backgroundColor: Color(0xFF00A4BA),
          title: Row(children: [
            Image.asset('lib/icons/logo.png'),
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
            size: 90,
          ),
          actions: [
            IconButton(
              icon: Image.asset('lib/icons/menu-home.png'),
              color: Color(0xFF292D32),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Text(
            "Adicione matérias\nno botão",
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
            child: Image.asset('lib/icons/button-floating.png'),
            onPressed: () {

            }
          ),
        ),
      ),
    );
  }
}
