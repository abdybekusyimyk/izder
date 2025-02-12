import 'package:flutter/material.dart';
import 'package:izder/app.dart';
import 'package:izder/src/modules/Achievements/achievements.dart';

void main() {
  runApp(
    const MyApp(),
  );
}class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Achievements(),
    );
  }
}
