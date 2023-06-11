import 'dart:math';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../components/materia_content/materia_content.dart';
import 'main.dart';


// void main() {
//   runApp(new Materia());
// }

class Materia extends StatefulWidget {
  const Materia({super.key});

  @override
  State<Materia> createState() => _MateriaState();
}

class _MateriaState extends State<Materia> {
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
              'Programação Móvel',
              style: TextStyle(
                // fontFamily: 'Inter',
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                alignment: Alignment.centerRight,
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
                  MateriaContent(),
                ],
              ),
            ),
          )),
    );
  }
}
