import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
  // const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                scaffoldBackgroundColor: bgColor,
                useMaterial3: true,
                textTheme:
                    GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
                        .apply(
                          bodyColor: Colors.white,
                        )
                        .copyWith(
                          bodyLarge: const TextStyle(color: bodyTextColor),
                          bodyMedium: const TextStyle(color: bodyTextColor),
                        ),
              ),
              home: const SplashView());
        });
  }
}
