import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/styles.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start, this.rating,});
final MainAxisAlignment mainAxisAlignment;
final  num ?rating;
@override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon( FontAwesomeIcons.solidStar,
          color:Color(0xffFFDD4F),
          size: 14
          ,),
        SizedBox(width: 6.3,),
        Text('$rating',style:Styles.textStyle16,),
        SizedBox(width: 5,),
        Opacity(
          opacity: .5,
            child: Text('(245)',style:Styles.textStyle14.copyWith(fontWeight: FontWeight.w600))),

      ],
    );
  }
}