import 'package:flutter/material.dart';

class DiaryView extends StatelessWidget {
  const DiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Күндөлүк'),
      ),
      body: const Center(
        child: Text('Күндөлүк'),
      ),
    );
  }
}
