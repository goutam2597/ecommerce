import 'package:ecom_project/app/app_theme_data.dart';
import 'package:ecom_project/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecom_project/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecom_project/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class BdBay extends StatelessWidget {
  const BdBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightThemeData,
      initialRoute: '/',
      routes: {
        '/' : (context)=>SplashScreen(),
        EmailVerificationScreen.name : (context) =>EmailVerificationScreen(),
        OtpVerificationScreen.name : (context) => OtpVerificationScreen(),
      },
    );
  }
}
