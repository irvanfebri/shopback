
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/values/colors.dart';
import 'package:flutter_shop/pages/application/application_widgets.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});
  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              body: buildPage(_index),
              bottomNavigationBar: Container(
                  width: 375.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryElement,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.h),
                        topRight: Radius.circular(20.h)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: BottomNavigationBar(
                    onTap: (value) {
                      setState(() {
                        _index = value;
                      });
                    },
                    currentIndex: _index,
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedItemColor: AppColors.primaryFourElementText,
                    selectedItemColor: AppColors.primaryElement,
                    items: [
                      BottomNavigationBarItem(
                        icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/home.png",
                          ),
                        ),
                        activeIcon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/home.png",
                            color: AppColors.primaryElement,
                          ),
                        ),
                        label: "home",
                      ),
                      BottomNavigationBarItem(
                        icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/search2.png",
                          ),
                        ),
                        activeIcon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/search2.png",
                            color: AppColors.primaryElement,
                          ),
                        ),
                        label: "search",
                      ),
                      BottomNavigationBarItem(
                        icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/play-circle1.png",
                          ),
                        ),
                        activeIcon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/play-circle1.png",
                            color: AppColors.primaryElement,
                          ),
                        ),
                        label: "search",
                      ),
                      BottomNavigationBarItem(
                        icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/message-circle.png",
                          ),
                        ),
                        activeIcon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/message-circle.png",
                            color: AppColors.primaryElement,
                          ),
                        ),
                        label: "search",
                      ),
                      BottomNavigationBarItem(
                        icon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/person2.png",
                          ),
                        ),
                        activeIcon: SizedBox(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset(
                            "assets/icons/person2.png",
                            color: AppColors.primaryElement,
                          ),
                        ),
                        label: "search",
                      ),
                    ],
                  )))),
    );
  }
}
