import 'package:application_apply_proto/src/features/start_listview/widgets/startlistcard.dart';
import 'package:flutter/material.dart';

class Startlistview extends StatelessWidget {
  const Startlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const [
              StartCard("Monday, 20. April, 2024",
                  "Placeholder - Placeholder - Placeholder"),
              StartCard("Wednesday, 26. May, 2024",
                  "Placeholder - Placeholder - Placeholder"),
              StartCard("Friday, 26. May, 2024",
                  "Placeholder - Placeholder - Placeholder"),
              StartCard("Saturday, 27. May, 2024",
                  "Placeholder - Placeholder - Placeholder")
            ],
          ),
        ),
      ],
    );
  }
}
