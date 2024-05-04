import 'package:flutter/material.dart';

import 'daily_activity.dart';

class NewActivity extends StatelessWidget {
  const NewActivity({super.key});

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
          //title section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start new activity",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Set goal and track",
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

          SizedBox(
            height: 20,
          ),

          Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2035571235.
            //height: 150,
            width: MediaQuery.of(context).size.width,
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DailyActivity(
                    activityName: 'Run',
                    activityIcon: Icon(
                      Icons.directions_run_outlined,
                      size: 30,
                    )),
                DailyActivity(
                    activityName: 'Cycle',
                    activityIcon: Icon(
                      Icons.directions_bike_outlined,
                      size: 30,
                    )),
                DailyActivity(
                    activityName: 'Swim',
                    activityIcon: Icon(
                      Icons.pool,
                      size: 30,
                    )),
                DailyActivity(
                    activityName: 'Yoga',
                    activityIcon: Icon(
                      Icons.accessibility,
                      size: 30,
                    )),
                DailyActivity(
                    activityName: 'Rowing',
                    activityIcon: Icon(
                      Icons.rowing_rounded,
                      size: 30,
                    )),
                DailyActivity(
                    activityName: 'Boxing',
                    activityIcon: Icon(
                      Icons.directions_run_outlined,
                      size: 30,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
