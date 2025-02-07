import 'package:flutter/material.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/home_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Image.asset(
              'assets/images/img first.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Column(
            children: [
              Text(
                'Celebrate Your Achievements',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 23),
              Text(
                  'Celebrate Your Achievements Track your positive thoughts and your milestones. Revisit your best moments to boost your confidence')
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            width: 260,
            height: 43,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text('countinue'),
            ),
          ),
        ],
      ),
    );
  }
}
