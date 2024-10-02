import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();
  _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Screen"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const Text("123"),
            Container(
              child: TableCalendar(
                //rowHeight: 60,
                focusedDay: today,
                firstDay: DateTime(2010),
                lastDay: DateTime(2030),
              ),
            )
          ],
        ));
  }
}
