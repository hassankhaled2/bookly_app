import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 28),
      child: Row(
        children:
        [
          Image.asset(AssetsData.logo,height: 20,),
          const Spacer(),
          IconButton(onPressed:(){} ,
            icon:Icon(FontAwesomeIcons.magnifyingGlass,size: 24,)  ,)

        ],
      ),
    );
  }
}