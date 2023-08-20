import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon( FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F),),
        SizedBox(width: 6.3,),
        Text('4.8',style:Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(245)',style:Styles.textStyle14.copyWith(color:Color(0xff707070)),)
      ],
    );
  }
}