

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/routes/names.dart';
import 'package:flutter_shop/common/values/colors.dart';
import 'package:flutter_shop/pages/common_widgets.dart';

import 'package:flutter_shop/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_shop/pages/sign_in/bloc/sign_in_events.dart';
import 'package:flutter_shop/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_shop/pages/sign_in/sign_in_controlller.dart';




class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc,SignInState>(builder: (context,state){
      return Container(
        color: AppColors.primaryBackground,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.primaryBackground,
            appBar: buildAppBar("Sign"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThirdPartyLogin(context),
                  Center(child: reusableText("Or use your email account to login")),
                  Container(
                    margin: EdgeInsets.only(top: 40.h),
                    padding: EdgeInsets.only(left: 25.w,right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText("Email"),
                        SizedBox(height: 5.h,),
                        buildTextField("Enter your email address", "email","user",(value){
                          context.read<SignInBloc>().add(EmailChanged(value));
                        }),
                        reusableText("Password"),
                        SizedBox(height: 5.h,),
                        buildTextField("Enter your password", "password","lock",(value){
                          context.read<SignInBloc>().add(PasswordChanged(value));
                        }),
                        SizedBox(height: 20.h,),
                        forgotPassword(),
                        buildLogInAndRegButton("Log In", "login",(){
                          SignInController(context: context).handleSignIn("email");
                        }),
                        buildLogInAndRegButton("Register", "register",(){
                          Navigator.of(context).pushNamed(AppRoutes.Register);
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      );
    });
  }
}