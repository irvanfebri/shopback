
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/pages/application/bloc/app_blocs.dart';
import 'package:flutter_shop/pages/register/bloc/register_bloc.dart';
import 'package:flutter_shop/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_shop/pages/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders{
  static get allBlocProviders=>[
    BlocProvider(lazy: false, create: (context) => WelcomeBlocs()),
    BlocProvider(lazy: false, create: (context) => AppBlocs()),
    BlocProvider(lazy: false, create: (context) => SignInBloc()),
     BlocProvider(lazy: false, create: (context) => RegisterBloc()),
  ];
}