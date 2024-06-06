
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_shop/common/routes/names.dart';
import 'package:flutter_shop/pages/application/application_page.dart';
import 'package:flutter_shop/pages/application/bloc/app_blocs.dart';
import 'package:flutter_shop/pages/register/bloc/register_bloc.dart';
import 'package:flutter_shop/pages/register/register.dart';
import 'package:flutter_shop/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_shop/pages/sign_in/sign_in.dart';
import 'package:flutter_shop/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_shop/pages/welcome/welcome.dart';

class AppPages {

  static List<PageEntity> Routes(){
    return [
      PageEntity(
          route:AppRoutes.INITIAL,
          page:Welcome(),
          bloc:BlocProvider(create: (_) => WelcomeBlocs())
      ),
      PageEntity(
          route:AppRoutes.Sign_in,
          page:SignIn(),
          bloc:BlocProvider(create: (_) => SignInBloc())
      ),
      PageEntity(
          route:AppRoutes.Register,
          page:Register(),
          bloc:BlocProvider(create: (_) => RegisterBloc())
      ),
      PageEntity(
          route:AppRoutes.Application,
          page:ApplicationPage(),
          bloc:BlocProvider(create: (_) => AppBlocs())
      ),
    ];
  }

  static List<dynamic> allBlocProviders(BuildContext context){
    List<dynamic> blocProviders = <dynamic>[];
    for(var bloc in Routes()){
      if(bloc.bloc!=null){
        blocProviders.add(bloc.bloc);
      }
    }
    return blocProviders;
  }


  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {

    if(settings.name!=null){
      var result = Routes().where((element) => element.route==settings.name);
      if(result.isNotEmpty){

        return MaterialPageRoute<void>(builder: (_) => result.first.page,settings: settings);
      }
    }

    return MaterialPageRoute<void>(builder: (_) => SignIn(),settings: settings);
  }

}


class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
    this.bloc,
  });
}