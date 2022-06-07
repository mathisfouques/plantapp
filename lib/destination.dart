import 'package:flutter/material.dart';
import 'package:plant_app/plant_widget.dart';

import 'destination_next.dart';

class Destination extends StatelessWidget {
  const Destination({
    Key? key,
    required this.clicked,
  }) : super(key: key);

  final String clicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22483f),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PlantWidget(
            photo: clicked,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationNext(
                    clicked: clicked,
                  ),
                ),
              );
            },
            width: 300,
          ),
        ),
      ),
    );
  }
}
