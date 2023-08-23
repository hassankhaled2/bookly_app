import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backgroundColor, required this.TextColor, this.borderRadius, required this.text,  this.fontSize}) : super(key: key);
final Color backgroundColor;
final  String  text;
final Color TextColor;
final BorderRadius?borderRadius;
final double ?fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed:(){},
        style: TextButton.styleFrom(
          backgroundColor:backgroundColor ,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius??BorderRadius.circular(
                16
            )
          )
        ),
        child: Text(text,style:Styles.textStyle18.copyWith(color:TextColor ,fontWeight: FontWeight.w900,fontSize: fontSize),),
      ),
    );
  }
}
