import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MateriaContent extends StatelessWidget {
  const MateriaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: 230,
          width: 400,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'App',
                style: TextStyle(
                  color: Color(0XFFB3000000),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.check_circle),
                    color: Color(0xFF99292D32),

                    // iconSize: 10,
                    onPressed: () {
                      // Lógica para o botão TaskCheck
                    },
                  ),
                  Text(
                    'Showdialog',
                    style: TextStyle(
                      color: Color(0XFFB3000000),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_horiz_rounded),
                    onPressed: () {
                      // Lógica para o botão Menu de Três Pontinhos
                    },
                  ),
                ],
              ),

              //===== SEGUNDA LINHA =====
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.circle_outlined),
                    color: Color(0xFF99292D32),

                    // iconSize: 10,
                    onPressed: () {
                      // Lógica para o botão TaskCheck
                    },
                  ),
                  Text(
                    'End home screen',
                    style: TextStyle(
                      color: Color(0XFFB3000000),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_horiz_rounded),
                    onPressed: () {
                      // Lógica para o botão Menu de Três Pontinhos
                    },
                  ),
                ],
              ),

              SizedBox(
                  height:
                      10), // Espaçamento entre o título da tarefa e o botão "Adicionar tarefa"
              Center(
                child: TextButton(
                  child: Text(
                    'Add task',
                    style: TextStyle(
                      color: Color(0xFFB3000000),
                      fontSize: 20,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity,
                        50), // Ajuste a altura conforme necessário
                    backgroundColor: Color(0xFFEDEEF0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // BorderRadius de 15
                    ),
                  ),
                  onPressed: () {
                    // Lógica para o botão "Adicionar tarefa"
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        _note(context),
      ],
    );
  }

  Widget _note(BuildContext context) {
    final List<String> items = [
      'João Aureliano;',
      'José Maurício;',
      'Rafael Barros.',
    ];

    return Container(
      alignment: Alignment.topLeft,
      height: 220,
      width: 400,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contributors',
            style: TextStyle(
              color: Color(0XFFB3000000),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height:10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in items)
                Text(
                  '\u2022 '+ item,
                   style: TextStyle(
                      color: Color(0XFFB3000000),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                ),
            ],
          ),
           SizedBox(height:10),
          SizedBox(
              height:
                  10), // Espaçamento entre o título da tarefa e o botão "Adicionar tarefa"
          Center(
            child: TextButton(
              child: Text(
                'Add note',
                style: TextStyle(
                  color: Color(0xFFB3000000),
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size(
                    double.infinity, 50), // Ajuste a altura conforme necessário
                backgroundColor: Color(0xFFEDEEF0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // BorderRadius de 15
                ),
              ),
              onPressed: () {
                // Lógica para o botão "Adicionar tarefa"
              },
            ),
          ),
        ],
      ),
    );
  }
}
