import 'package:flutter/material.dart';

class DailyActivity extends StatelessWidget {
  late String activityName;
  late Icon activityIcon;

  DailyActivity({
    super.key,
    required this.activityName,
    required this.activityIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            color: const Color.fromARGB(255, 197, 197, 197),
            textColor: Colors.black87,
            padding: EdgeInsets.all(10),
            elevation: 0,
            child: activityIcon),
        SizedBox(
          height: 5,
        ),
        Text(
          activityName, 
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
