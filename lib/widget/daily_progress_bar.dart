import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DailyProgressBar extends StatelessWidget {
  late String dayOfWeek;
  late double progressValue;

  DailyProgressBar({
    super.key,
    required this.dayOfWeek,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 22.0,
          percent: progressValue,
          //lineWidth: 13.0,
          animation: true,
          backgroundColor: Color.fromARGB(255, 226, 225, 225),
          progressColor: Color.fromARGB(255, 76, 175, 134),
          //animationDuration: 1000,
          circularStrokeCap: CircularStrokeCap.round,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          dayOfWeek,
        ),
      ],
    );
  }
}
