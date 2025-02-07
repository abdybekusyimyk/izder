import 'package:flutter/material.dart';
import 'package:izder/src/components/nabbar_view.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/home_page2.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/saimon627.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NabbarView(),
                            ),
                          );
                        },
                        icon: Icon(Icons.close),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Column(
            children: [
              Text(
                'Unlock Premium functionality',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 23),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.amberAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Remove the restriction on fovorites'),
                          ],
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.amberAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('access to all  challenges'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: double.infinity,
              height: 43,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber),
                  foregroundColor: WidgetStateProperty.all(Colors.amber),
                ),
                onPressed: () {},
                child: Text(
                  'Uniock for доллар0.99',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'terms of use',
              ),
              Text('Restore purchase'),
              Text('Privacy Policy  ')
            ],
          ),
        ],
      ),
    );
  }
}
