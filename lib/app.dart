import 'package:flutter/material.dart';
import 'package:izder/src/modules/diary/view/diary_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(useMaterial3: true),
      home: DiaryView(),
    );
  }
}
