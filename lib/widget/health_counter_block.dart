import 'package:flutter/material.dart';

class HealthCounterBlock extends StatefulWidget {
  late String name;
  late String value;
  late String mesuaringUnit;
  late Color blockColor;
  late Icon healthIcon;

  HealthCounterBlock(
      {super.key,
      required this.name,
      required this.value,
      required this.mesuaringUnit,
      required this.blockColor,
      required this.healthIcon});

  @override
  State<HealthCounterBlock> createState() => _HealthCounterBlockState();
}

class _HealthCounterBlockState extends State<HealthCounterBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(60),
        ),
        color: widget.blockColor,
      ),
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {},
            child: widget.healthIcon,
            shape: CircleBorder(),
            textColor: Colors.white,
            color: Colors.black87,
            elevation: 0,
          ),
          Text(widget.name),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.value,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(widget.mesuaringUnit,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
