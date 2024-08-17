import 'package:bookly_app/Features/home/presentation/views/widgets/home_page_widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: HomeViewBody(),
    );
  }
}

