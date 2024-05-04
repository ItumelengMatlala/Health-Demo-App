import 'package:flutter/material.dart';
import '../widget/daily_progress_bar.dart';

class DailyGoals extends StatelessWidget {
  DailyGoals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          // First row with block title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your daily goals",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Last 7 days",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

              //right arrow
              MaterialButton(
                  onPressed: () {},
                  color: Color.fromARGB(255, 226, 225, 225),
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ))
            ],
          ),

          SizedBox(height: 20),

          //circular prograss bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DailyProgressBar(
                dayOfWeek: "Mon",
                progressValue: 0.9,
              ),
              DailyProgressBar(
                dayOfWeek: "Tue",
                progressValue: 0.2,
              ),
              DailyProgressBar(
                dayOfWeek: "Wed",
                progressValue: 0.7,
              ),
              DailyProgressBar(
                dayOfWeek: "Thurs",
                progressValue: 0.9,
              ),
              DailyProgressBar(
                dayOfWeek: "Fri",
                progressValue: 0.0,
              ),
              DailyProgressBar(
                dayOfWeek: "Sat",
                progressValue: 0.8,
              ),
              DailyProgressBar(
                dayOfWeek: "Sun",
                progressValue: 0.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
