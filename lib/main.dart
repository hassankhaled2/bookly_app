import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Features/Splash/presentation/views/splash_view.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  runApp(const Bookly());

}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:AppRouter.router ,
    theme:ThemeData.dark().
    copyWith(scaffoldBackgroundColor:KPrimaryColor,
        textTheme:GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)),

     debugShowCheckedModeBanner: false,

    );
  }
}


