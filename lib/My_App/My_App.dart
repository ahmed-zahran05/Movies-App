import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/Core/Utills/RoutesManager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
         routes: RoutesManager.routes ,
         initialRoute: RoutesManager.splash,
     //   theme: AppTheme.LightTheme,
    //    themeMode: ThemeMode.light,
      ),
    );
  }
}
