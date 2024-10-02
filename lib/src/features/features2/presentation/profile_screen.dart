import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text("Second Screen says Hello"),
      ),
    );
  }
}
