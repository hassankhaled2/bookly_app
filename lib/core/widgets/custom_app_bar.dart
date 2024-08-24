import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/widgets/home_page_widgets/search_widgets/test3.dart';
import '../utils/AssetsData.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom:20 ),
      child: Row(
        children:
        [
          Image.asset(AssetsData.logo,height: 20,),
          const Spacer(),
          SearchBlocBuilder()

        ],
      ),
    );
  }
}