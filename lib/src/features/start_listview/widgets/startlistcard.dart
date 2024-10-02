import 'package:flutter/material.dart';

class StartCard extends StatelessWidget {
  final String date;
  final String todo;
  const StartCard(this.date, this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7),
      color: const Color(0xff0388c3),
      elevation: 10,
      shadowColor: Colors.grey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0), //Größe der Cards
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              date,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            // const SizedBox(
            //     //height: 0,
            //     //Box zwischen den Texten
            //     ),
            Text(
              todo,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
