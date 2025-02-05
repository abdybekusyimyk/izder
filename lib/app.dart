import 'package:flutter/material.dart';
import 'package:izder/src/modules/main_screen/nabbar_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(useMaterial3: true),
        home: NabbarView(),
      ),
    );
  }
}
