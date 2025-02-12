import 'package:flutter/material.dart';

class SamatAddrecord extends StatefulWidget {
  const SamatAddrecord({Key? key}) : super(key: key);

  @override
  _SamatAddrecordState createState() => _SamatAddrecordState();
}

class _SamatAddrecordState extends State<SamatAddrecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Add record',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.delete,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: double.infinity,
              height: 508,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Title',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Text',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: 265,
              height: 55,
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
