
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/values/colors.dart';

import 'package:flutter_shop/pages/application/application_widgets.dart';

import 'package:flutter_shop/pages/application/bloc/app_events.dart';

import 'bloc/app_blocs.dart';
import 'bloc/app_states.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});
  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppStates>(
        builder: (context, state) {return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              body: buildPage(state.index),
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
                     context.read<AppBlocs>().add(TriggerAppEvent(value));
                    },
                    currentIndex: state.index,
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedItemColor: AppColors.primaryFourthElementText,
                    selectedItemColor: AppColors.primaryElement,
                    items: bottomTabs,
                  )))),
    );});
  }
}
