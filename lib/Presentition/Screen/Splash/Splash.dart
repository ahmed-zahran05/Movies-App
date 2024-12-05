import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Core/Utills/ColorsManager.dart';
import 'package:movies_app/Core/Utills/RoutesManager.dart';
import 'package:movies_app/Core/Utills/assetsManager.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(
     const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, RoutesManager.home);
       },
      );
      return   Scaffold(
           backgroundColor: ColorsManager.black,
           body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
                const Spacer(),
                Image.asset(AssetsManager.MoviesLogoSplash , width: 168.w, height: 187.h, ),
                const Spacer(),
                Image.asset(AssetsManager.GroupSplash, width: 213.w, height: 128.h,),
             ],
           ),
      );
  }
}
