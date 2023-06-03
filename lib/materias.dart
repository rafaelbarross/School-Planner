// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(new Materias());
}

class Materias extends StatefulWidget {
  const Materias({super.key});

  @override
  State<Materias> createState() => _MateriasState();
}

class _MateriasState extends State<Materias> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

          // backgroundColor: Colors.black,

          appBar: AppBar(
            backgroundColor: Color(0xFF4C999E),
            toolbarHeight: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            leading: IconButton(
              icon: Image.asset('lib/assets/icons/icon-back.png'),
              iconSize: 36,
              onPressed: () {
                //  Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => App()),
                //  );
              },
            ),
            title: Text(
              'Programação Móvel',
              style: TextStyle(
                // fontFamily: 'Inter',
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Image.asset('lib/assets/icons/menu-home.png'),
                onPressed: () {},
                iconSize: 36,
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
               

                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
            
                  Container(
                    
                    
                    height: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                ],
              ),
            ),
          )),
    );
  }
}
