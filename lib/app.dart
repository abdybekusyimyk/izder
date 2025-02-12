import 'package:flutter/material.dart';
// import 'package:izder/src/components/nabbar_view.dart';
// import 'package:izder/src/modules/Achievements/view/samat_addrecord.dart';
import 'package:izder/src/modules/Achievements/achievements.dart';
// import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/splash_view.dart';
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
        home: Achievements(),
      ),
    );
  }
}
