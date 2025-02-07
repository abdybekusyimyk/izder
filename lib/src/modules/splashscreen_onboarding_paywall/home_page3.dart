import 'package:flutter/material.dart';
import 'package:izder/src/modules/splashscreen_onboarding_paywall/view/home_page2.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

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
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                    radius: 30,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage2()));
                        },
                        icon: Icon(Icons.account_balance_wallet))),
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
          Row(
            children: [
              SizedBox(
                width: 93,
              ),
              Container(
                width: 300,
                height: 43,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    foregroundColor: MaterialStateProperty.all(Colors.amber),
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
              SizedBox(
                width: 12,
              ),
            ],
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
