import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:izder/src/modules/abubakr_Emotional_momen_tadding/widget/button_sheet.dart';
import 'package:izder/src/modules/abubakr_Emotional_momen_tadding/widget/shodiolog.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Addrecord extends StatefulWidget {
  const Addrecord({super.key});

  @override
  State<Addrecord> createState() => _AddrecordState();
}

class _AddrecordState extends State<Addrecord> {
  // ignore: non_constant_identifier_names
  TextEditingController? Itwassobeautifulcontroller = TextEditingController();
  File? _selectedImage;

  // ignore: unused_element
  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  Future displayButtonSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => ButtonSheetWidget(),
    );
  }

  void _showAddDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ShodiologWidget();
      },
    );
  }

  Future<void> getInt() async {
    final sheret = await SharedPreferences.getInstance();
    setState(() {
      Itwassobeautifulcontroller!.text =
          sheret.getString("Itwassobeautifulcontroller") ?? "";
    });
  }

  Future<void> sheretsakta() async {
    final shared = await SharedPreferences.getInstance();
    shared.setString(
        "Itwassobeautifulcontroller", Itwassobeautifulcontroller!.text);
  }

  @override
  void initState() {
    getInt();
    super.initState();
  }

  @override
  void dispose() {
    Itwassobeautifulcontroller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0DB8F8),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        toolbarHeight: 13.w,
        leading: InkWell(
          onTap: () {
            if (Itwassobeautifulcontroller!.text.isNotEmpty) {
              _showAddDialog(context);
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff131313),
              size: 21.sp,
            ),
          ),
        ),
        title: Center(
          child: Row(
            children: [
              SizedBox(width: 28.w),
              Text(
                "Add record",
                style: TextStyle(
                  color: Color(0xff131313),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.sp,
          vertical: 15.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
                fontSize: 18.7.sp,
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                controller: Itwassobeautifulcontroller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(horizontal: 13),
                  border: InputBorder.none,
                  hintText: "It was so beautiful",
                  hintStyle: TextStyle(
                    color: Color(0xff939393),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              "Photo",
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
                fontSize: 18.7.sp,
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: double.infinity,
              height: 23.h,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    displayButtonSheet(context);
                  },
                  child: _selectedImage != null
                      ? Image.file(
                          _selectedImage!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        )
                      : Image.asset("assets/images/add.photo.png"),
                ),
              ),
            ),
            Spacer(flex: 13),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.sp),
              child: GestureDetector(
                onTap: () {
                  sheretsakta();
                  Navigator.pop(context, Itwassobeautifulcontroller!.text);
                },
                child: Container(
                  width: double.infinity,
                  height: 6.4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Color.fromARGB(110, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
