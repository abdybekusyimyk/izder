import 'package:flutter/material.dart';
// import 'package:izder/src/modules/splashscreen_onboarding_paywall/home_page.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/home_page3.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({Key? key}) : super(key: key);
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Embrace Your Only Flare',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 23),
              Text(
                  'Use photos to create a collection of joyful moments. This will be your tool for building self-love every day ')
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
                    MaterialPageRoute(builder: (context) => HomePage3()));
              },
              child: Text('start'),
            ),
          ),
        ],
      ),
    );
  }
}
