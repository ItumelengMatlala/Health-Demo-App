import 'package:flutter/material.dart';
import '../widget/daily_goals.dart';
import '../widget/last_workout.dart';

import 'widget/health_counter_block.dart';
import 'widget/new_activity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String connectionStatus = "Connected";
  String connectionDevice = "Samsung Health 4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Activities",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [

            //connection status
            Row(
              children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1608458221.
                  child: Icon(
                    Icons.brightness_1,
                    size: 10,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("$connectionStatus: "),
                Text(
                  connectionDevice,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //Calories / time and distance
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              HealthCounterBlock(
                healthIcon: Icon(Icons.health_and_safety),
                name: "Calories",
                value: "456",
                mesuaringUnit: "kcal",
                blockColor: Color.fromARGB(255, 178, 209, 224),
              ),
              HealthCounterBlock(
                healthIcon: Icon(Icons.access_time),
                name: "Time",
                value: "02:36",
                mesuaringUnit: "kcal",
                blockColor: Color.fromARGB(255, 89, 253, 130),
              ),
              HealthCounterBlock(
                healthIcon: Icon(Icons.directions_run_outlined),
                name: "Distance",
                value: "4.5",
                mesuaringUnit: "km",
                blockColor: Color.fromARGB(255, 250, 197, 21),
              ),
            ]),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:927050769.

            //daily goals
            DailyGoals(),
            SizedBox(
              height: 10,
            ),


            NewActivity(),
            SizedBox(
              height: 10,
            ),
            
            LastWorkout(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
