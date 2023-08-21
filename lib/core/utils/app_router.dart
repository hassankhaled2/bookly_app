import 'package:bookly_app/Features/home/data/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter
{
  static const kHomeView= '/homeView';
  static const kBookDetailsView= '/bookDetailViews';
  // بنعمل الحركه دى علشان نتفادى الاخطاء الكتابيه
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>const SplashView(),
      ),
      GoRoute(
        path:kHomeView,
        builder: (BuildContext context, GoRouterState state) =>const HomeView(),
      ),
      GoRoute(
        path:kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) =>const BookDetailsViews(),
      )
    ],
  );
}