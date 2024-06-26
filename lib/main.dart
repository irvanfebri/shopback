
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/values/colors.dart';
import 'package:flutter_shop/global.dart';
import 'package:firebase_core/firebase_core.dart';
import 'common/routes/routes.dart';


void main() async{
  await Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [...AppPages.allBlocProviders(context)],
        child: ScreenUtilInit(
            designSize: Size(375, 812),
            builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    appBarTheme: AppBarTheme(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(
                        color: AppColors.primaryText,
                      ),
                    )
                  ),
                  initialRoute: AppRoutes.INITIAL,
                  onGenerateRoute: AppPages.GenerateRouteSettings,
                )));
  }
}
