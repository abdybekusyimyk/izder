import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShodiologWidget extends StatelessWidget {
  const ShodiologWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Leave the page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                "Are you sure you want to get out? This\nemotional moment will not be added"),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Color(0xff007AFF),
                      fontSize: 19.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Leave",
                    style: TextStyle(
                      color: Color(0xff007AFF),
                      fontSize: 19.sp,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
