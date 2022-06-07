import 'package:flutter/material.dart';
import 'package:plant_app/const/resource.dart';
import 'package:plant_app/destination_next.dart';
import 'package:plant_app/from.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DestinationNext(
        clicked: R.ASSETS_IMAGES_PLANT_2_PNG,
      ),
    );
  }
}
