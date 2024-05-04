import 'package:flutter/material.dart';

class LastWorkout extends StatelessWidget {
  const LastWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //text section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Last workout ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.brightness_1,
                    size: 10,
                  ),
                  Text(" Outdoor run",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.directions_run_outlined,
                      size: 18, color: Colors.grey),
                  Text("26 Nov 2023 ", style: TextStyle(color: Colors.grey)),
                  Icon(Icons.brightness_1, size: 6, color: Colors.grey),
                  Text(" 11:40 am ", style: TextStyle(color: Colors.grey)),
                  Icon(Icons.brightness_1, size: 6, color: Colors.grey),
                  Text(" 10 min", style: TextStyle(color: Colors.grey))
                ],
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
    );
  }
}
