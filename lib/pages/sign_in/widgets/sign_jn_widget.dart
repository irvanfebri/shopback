import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
      bottom: PreferredSize(
          child: Container(
            color: Colors.grey.withOpacity(0.5),
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)),
      centerTitle:true,
      title: Text(
        "Log In",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
        ),
      ));
}


Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      padding: EdgeInsets.only(left: 0.w, right: 0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons("google"),
          _reusableIcons("apple"),
          _reusableIcons("facebook"),
        ],
      ));
}

Widget _reusableIcons(String iconName){
  return GestureDetector(
    child: SizedBox(
        width: 40.w,
        height: 40.w,
        child: Image.asset("assets/icons/$iconName.png", fit: BoxFit.fill)),
    onTap: () {

    },
  );
}

Widget reusableText(String text){
  return Container(
    margin: EdgeInsets.only(bottom: 5.h,top: 20.h),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.5),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
    ),
  );
}

Widget buildTextField(String hintText, String textType,String iconName){
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(color: Colors.black)),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 17.w),
          width: 16.w,
          height: 16.w,
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        Container(
          width: 280.w,
          height: 50.h,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
            autocorrect: false,
            obscureText: textType=="password"?true:false,
          ),
        )
      ],
    ),
  );
}

Widget forgotPassword(){
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
        child: Text(
          "Forgot password?",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            fontWeight: FontWeight.normal,
            fontSize: 12.sp,
          ),
        ),
        onTap: () {
        }),
  );
}

Widget buildLogInAndRegButton(String buttonName, String buttonType){
  return GestureDetector(
      child: Container(
          width: 325.w,
          height: 50.h,
          margin: EdgeInsets.only(top: buttonType=="login"?40.h:20.h, left: 0.w, right: 0.w),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              border: Border.all(color: Colors.grey.withOpacity(0.5))),
          child: Center(
              child: Text(
                buttonName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                ),
              ))),
      onTap: () {

      });
}