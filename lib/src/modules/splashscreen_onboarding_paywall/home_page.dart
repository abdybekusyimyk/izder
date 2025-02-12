import 'package:flutter/material.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/home_page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Image.asset(
              'assets/images/img second.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Column(
            children: [
              Text(
                'Take on Daily Challenges',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 23),
              Text(
                  'Explore our diverse challenges for positive reflection. Enhance your self-esteem and appreciate your unique traits')
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
                    MaterialPageRoute(builder: (context) => Homepage2()));
              },
              child: Text('countnue'),
            ),
          ),
        ],
      ),
    );
  }
}
