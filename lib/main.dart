import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'Features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme:ThemeData.dark().
    copyWith(scaffoldBackgroundColor:KPrimaryColor),
     debugShowCheckedModeBanner: false,
     home:const SplashView(),
    );
  }
}


