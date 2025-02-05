import 'package:flutter/material.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/onboarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboarding(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0DB8F8),
      body: Center(
        child: Image.asset('assets/images/log.png'),
      ),
    );
  }
}
