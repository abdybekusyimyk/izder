import 'package:flutter/material.dart';
import 'package:izder/src/modules/main_screen/diary_view.dart';
import 'package:izder/src/modules/settings/view/setting_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NabbarView extends StatefulWidget {
  const NabbarView({super.key});

  @override
  State<NabbarView> createState() => _NabbarViewState();
}

class _NabbarViewState extends State<NabbarView> {
  int _currentIndex = 0;

  List<Widget> viewnabbar = [
    DiaryView(),
    SizedBox(),
    SizedBox(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewnabbar[_currentIndex],
      backgroundColor: Color.fromARGB(188, 13, 185, 248),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.menu_book_sharp,
                size: 22.sp,
              ),
              label: "Diary",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 22.sp,
              ),
              label: "Achievements",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 22.sp,
              ),
              label: "Challenges",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 22.sp,
              ),
              label: "settngs",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffFFFFFF),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
