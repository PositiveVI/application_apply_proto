import 'package:application_apply_proto/src/features/features3/presentation/calendar_screen.dart';
import 'package:application_apply_proto/src/features/start_listview/data/startlistview_data.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Apply",
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Apply",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xff0388c3),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: const Color(0xff0388c3),
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.calendar_today), label: "Calendar"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: [
        // Home page
        const Startlistview(),
        const CalendarScreen(),
        const Text("test"),
      ][currentPageIndex],
      backgroundColor: Colors.white,
    );
  }
}
