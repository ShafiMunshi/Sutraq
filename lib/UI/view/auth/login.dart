import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/UI/view/auth/forgot.dart';
import 'package:sutraq/UI/view/bottomNav/btmNavbar.dart';

import 'package:sutraq/UI/widgets/widgets.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_string.dart';

import '../bottomNav/Dashboard/dash_board.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        padding:
            EdgeInsets.only(top: 54.r, left: 34.r, right: 34.r, bottom: 60.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 100.h,
                width: 94.w,
                child: Image.asset(
                  'assets/logo/logo.png',
                  fit: BoxFit.cover,
                )),
            SizedBox(height: 36.h),
            //Welcome back txtt

            bigTitle(AppString.wlcmBack),

            SizedBox(
              height: 6.h,
            ),
            //subtitle
            bigSubTitle(AppString.wlcmBacksub),
            SizedBox(
              height: 43.h,
            ),
            smallLefttxt('E-mail Adress'),
            SizedBox(
              height: 7.h,
            ),
            emailTextField(),

            SizedBox(
              height: 15.h,
            ),
            smallLefttxt('Password'),
            SizedBox(
              height: 7.h,
            ),
            textformsection(),
            SizedBox(
              height: 13.h,
            ),
            InkWell(
              onTap: () {
                Get.to(Forgot());
              },
              child: smallRighttxt('Forget Password?'),
            ),
            SizedBox(
              height: 16.h,
            ),
            InkWell(
                onTap: () {
                  Get.to(BtmNavBar());
                },
                child: loginWidget(AppColors.stackContainer, AppString.login)),
            SizedBox(
              height: 27.h,
            ),
            RichText(
              text: TextSpan(
                text: 'Need an Account?',
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Try Su', style: TextStyle(color: Colors.green)),
                  TextSpan(text: 'traq!'),
                ],
              ),
            ),
            SizedBox(
              height: 64.h,
            ),
            SizedBox(
              height: 48.w,
              width: 48.w,
              child: Image.asset('assets/logo/fingerprint_24px.png'),
            ),
            Text(
              'Tap to use fingerprint',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

emailTextField() {
  return Container(
    height: 57.h,
    child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          String patttern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
          RegExp regExp = RegExp(patttern);
          if (value!.isEmpty) {
            return 'Check & Retype your E-mail';
          } else if (!regExp.hasMatch(value)) {
            return "Email must be a-z and A-Z";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            hintText: 'Enter your E-mail',
            hintStyle: TextStyle(color: AppColors.smallTextclr),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
            ),
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.green,
            ))),
  );
}

textformsection() {
  return Container(
    height: 57.h,
    child: TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Enter your Password',
          hintStyle: TextStyle(color: AppColors.smallTextclr),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.0),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.green,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.grey,
          )),
    ),
  );
}

smallRighttxt(txt) {
  return Align(
    alignment: Alignment.topRight,
    child: Text(
      txt,
      style: TextStyle(
        color: AppColors.stackContainer,
        fontSize: 11.sp,
        fontFamily: 'Circular Std',
      ),
    ),
  );
}
