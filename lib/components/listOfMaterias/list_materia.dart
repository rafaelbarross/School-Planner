import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../materia_content/materia_content.dart';
import '../../screens/materia.dart';

class ListMateria extends StatelessWidget {
  const ListMateria({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const BehindMotion(),
        children: [
          SlidableAction(
            icon: Icons.edit,
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF1EADDA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            onPressed: (context) => {},
          ),
          SlidableAction(
            icon: Icons.delete,
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFFFF4040),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            onPressed: (context) => {},
          ),
        ],
      ),
      child: _contentMateria(context),
    );
  }

  Widget _contentMateria(BuildContext context) {
    return InkWell(
      onTap: () => {
           Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Materia(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      },
      
      
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 112,
        // margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF0A9589),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Programação Móvel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Anotações: 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Tarefas: 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.star_rounded),
                  color: Colors.amber,
                  iconSize: 35,
                  onPressed: () {
                    // Sua função aqui
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
