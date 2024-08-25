
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';

import 'package:bookly_app/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_news_books_use_case.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/constants.dart';

import 'package:bookly_app/core/utils/simple_bloc_observer/simple_bloc_observer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'core/utils/Functions/set_up_service_locator.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  Bloc.observer=SimpleBlocObserver();
  setupServiceLocator();
  runApp(const Bookly());
}



class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProver make a version to all children that belong to it
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
            FetchFeatureBooksUseCase(
             getIt.get<HomeRepoImpl>(),
            ),
          )..fetchFeatureBooks();
        }),
        BlocProvider(create: (context) {
          return NewestBooksCubit(
            FetchNewsBooksUseCase(
                getIt.get<HomeRepoImpl>(),
            ),
          )..fetchNewestBooks();
        })
      ],
      child: MaterialApp(
        home: SplashView(),
        // routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme)
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
