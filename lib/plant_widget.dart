import 'package:flutter/material.dart';

class PlantWidget extends StatelessWidget {
  const PlantWidget({
    Key? key,
    required this.photo,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: photo,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(width / 2),
          splashColor: Colors.transparent,
          child: Container(
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(photo), fit: BoxFit.cover),
            ),
            child: SizedBox(height: width),
          ),
        ),
      ),
    );
  }
}
