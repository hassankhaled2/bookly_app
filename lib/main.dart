import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme:ThemeData.dark().
    copyWith(scaffoldBackgroundColor:KPrimaryColor,
        textTheme:GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)),

     debugShowCheckedModeBanner: false,
     home:const SplashView(),
    );
  }
}


