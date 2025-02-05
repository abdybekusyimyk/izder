import 'package:flutter/material.dart';
import 'package:izder/src/modules/challenges/view/challenge_view.dart';
import 'package:izder/src/modules/diary/view/diary_view.dart';
import 'package:izder/src/modules/emotional_moment_adding/view/emotional_moment_adding_view.dart';
import 'package:izder/src/modules/settings/view/setting_view.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(useMaterial3: true),
      home: SettingView(),
    );
  }
}
