import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),

            color: Colors.greenAccent,

            image:const DecorationImage(
                image:AssetImage(AssetsData.testImage,),
                fit: BoxFit.fill
            )
        ),
      ),
    );
  }
}