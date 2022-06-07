import 'package:flutter/material.dart';
import 'package:plant_app/const/resource.dart';
import 'package:plant_app/destination.dart';
import 'package:plant_app/plant_widget.dart';

class From extends StatefulWidget {
  const From({Key? key}) : super(key: key);

  @override
  State<From> createState() => _FromState();
}

class _FromState extends State<From> {
  final List<String> assets =
      List.generate(8, (index) => "assets/images/plant_${index + 1}.png");
  final List<Offset> offsets = [];
  List<Offset> offsetsFromSize(Size sizeOfScreen) {
    return [
      Offset(2 * sizeOfScreen.width / 3, 0.5 * sizeOfScreen.height / 8),
      Offset(5 * sizeOfScreen.width / 6, 2 * sizeOfScreen.height / 8),
      Offset(2 * sizeOfScreen.width / 3, 3 * sizeOfScreen.height / 8),
      Offset(1 * sizeOfScreen.width / 3, 4 * sizeOfScreen.height / 8),
      Offset(2 * sizeOfScreen.width / 3, 5 * sizeOfScreen.height / 8),
      Offset(2 * sizeOfScreen.width / 3, 6 * sizeOfScreen.height / 8),
      Offset(2 * sizeOfScreen.width / 3, 7 * sizeOfScreen.height / 8),
      Offset(2 * sizeOfScreen.width / 3, 7.5 * sizeOfScreen.height / 8),
    ];
  }

  final List<double> dimensions = [
    R.small,
    R.small,
    R.medium,
    R.large,
    R.large,
    R.small,
    R.small,
    R.large,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final offsets = offsetsFromSize(size);

    return Scaffold(
      backgroundColor: const Color(0xFF22483f),
      body: Stack(
        children: List.generate(
          9,
          (index) => index != 8
              ? Positioned(
                  top: offsets[index].dy - dimensions[index] / 2,
                  left: offsets[index].dx - dimensions[index] / 2,
                  child: PlantWidgetButton(
                    asset: assets[index],
                    dimension: dimensions[index],
                  ),
                )
              : const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: BottomBar(),
                ),
        ),
      ),
    );
  }
}

class PlantWidgetButton extends StatelessWidget {
  const PlantWidgetButton({
    Key? key,
    required this.asset,
    required this.dimension,
  }) : super(key: key);

  final String asset;
  final double dimension;

  @override
  Widget build(BuildContext context) {
    return PlantWidget(
      photo: asset,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Destination(
            clicked: asset,
          ),
        ),
      ),
      width: dimension,
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.home,
            color: Color(0xFF71716b),
          ),
          Icon(
            Icons.search,
            color: Color(0xFF71716b),
          ),
          Icon(
            Icons.search,
            color: Color(0xFF71716b),
          )
        ],
      ),
    );
  }
}
