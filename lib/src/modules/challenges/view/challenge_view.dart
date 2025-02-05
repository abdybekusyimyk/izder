import 'package:flutter/material.dart';

class ChallengeView extends StatelessWidget {
  const ChallengeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenges'),
      ),
      body: Center(
        child: Text('Challenges'),
      ),
    );
  }
}
