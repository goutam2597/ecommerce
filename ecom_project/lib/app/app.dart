import 'package:ecom_project/app/app_theme_data.dart';
import 'package:ecom_project/app/controller_binder.dart';
import 'package:ecom_project/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecom_project/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecom_project/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecom_project/features/auth/ui/screens/splash_screen.dart';
import 'package:ecom_project/features/common/ui/screens/main_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BdBay extends StatelessWidget {
  const BdBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemeData.lightThemeData,
      initialRoute: '/',
      initialBinding: ControllerBinder(),
      routes: {
        '/' : (context)=>SplashScreen(),
        EmailVerificationScreen.name : (context) =>EmailVerificationScreen(),
        OtpVerificationScreen.name : (context) => OtpVerificationScreen(),
        CompleteProfileScreen.name : (context) => CompleteProfileScreen(),
        MainBottomNav.name : (context) => MainBottomNav(),
      },
    );
  }
}
