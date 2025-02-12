import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonSheetWidget extends StatefulWidget {
  const ButtonSheetWidget({super.key});

  @override
  State<ButtonSheetWidget> createState() => _ButtonSheetWidgetState();
}

class _ButtonSheetWidgetState extends State<ButtonSheetWidget> {
  // Galereyani ochish funksiyasi
  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {});
    }
  }

  Future<void> _pickImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23.h,
      child: Container(
        width: double.infinity,
        height: 23.h,
        color: Color(0xffB3B3B3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: _pickImage, // TO‘G‘RI chaqirish usuli
              child: Text(
                "Media library",
                style: TextStyle(
                  color: Color.fromARGB(255, 54, 104, 156),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            GestureDetector(
              onTap: _pickImageFromCamera,
              child: Text(
                "Camera",
                style: TextStyle(
                  color: Color.fromARGB(255, 54, 104, 156),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Color.fromARGB(255, 54, 104, 156),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
