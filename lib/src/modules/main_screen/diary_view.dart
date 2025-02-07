import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiaryView extends StatelessWidget {
  const DiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(188, 14, 185, 248),
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.sp),
              child: Container(
                width: double.infinity,
                height: 29.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18.sp),
                    bottomRight: Radius.circular(18.sp),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.9.sp,
                        vertical: 10.sp,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diary",
                            style: TextStyle(
                              color: Color(0xff131313),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "0 entries",
                            style: TextStyle(
                              color: Color(0xff81BA48),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16.h,
                          child: Image.asset(
                            "assets/images/Frame 823425006.png",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add your emotional\nmoments",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 17.sp,
                              ),
                            ),
                            SizedBox(height: 1.3.h),
                            Container(
                              width: 34.w,
                              height: 3.6.h,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    color: Color(0xff131313),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your past emotions",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: 86.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(104, 255, 255, 255),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 14.h,
                    child: Image.asset("assets/images/Frame.png"),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Your journal is still empty",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Write down your emotions here\nand support them with photos of\n                     nevents",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
