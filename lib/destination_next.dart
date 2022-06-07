import 'package:flutter/material.dart';

class DestinationNext extends StatelessWidget {
  const DestinationNext({
    Key? key,
    required this.clicked,
  }) : super(key: key);

  final String clicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22483f),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: clicked,
              child: Material(
                  child: Image.asset(
                clicked,
                fit: BoxFit.fitWidth,
              )),
            ),
          ),
          Positioned(
            top: 300,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 216, 209),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text("Bonjour"),
                    Spacer(),
                    Text(
                        "Strelitzia, commonly known as the bird of paradise, is the undisputed queen of the houseplant world. One look at its blooms and you'll find out where it got its name; the flowers look incredibly like the head of an exotic bird.",
                        style: TextStyle(),
                        maxLines: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
