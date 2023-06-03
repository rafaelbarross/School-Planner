import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'materias.dart';

void main() {
  runApp(App());
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
            child: Image.asset('lib/assets/icons/button-floating.png'),
            onPressed: () {

              buildInput(context);
            },
          ),
        ),
      ),
    );
  }
}

buildInput(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            backgroundColor: Color(0xFF00A4BA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Form(
              
                child: Container(
                  
              width: 300,
              height: 150,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      
                      hintText: "Nome da material",
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                    style: GoogleFonts.jost(
                      fontSize: 24,
                      color: Color.fromRGBO(255, 255, 255, 0.50),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, bottom: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(255, 64, 64, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'CANCEL',
                                style: GoogleFonts.jost(
                                    fontSize: 18, color: Colors.black),
                              )),
                          SizedBox(width: 10),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {
                                 
                              },
                              child: Text(
                                'OK',
                                style: GoogleFonts.jost(
                                    fontSize: 18, color: Colors.black),
                              )
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          );
    }
  );
}
