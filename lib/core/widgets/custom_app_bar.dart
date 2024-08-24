
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../Features/search/presentation/views/widgets/search_widgets/SearchBlocBuilder.dart';
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