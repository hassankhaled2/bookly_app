import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),

                    color: Colors.greenAccent,

                    image:const DecorationImage(
                        image:AssetImage(AssetsData.testImage,),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:MediaQuery.of(context).size.width *.5,
                      child:  Text('Harry Potter and the Goblet of Fire ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                        ,style:Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),)),
                  const  SizedBox(height:3 ,),
                  const Text('J.k.Rowing',style: Styles.textStyle14,),
                  const  SizedBox(height:3 ,),
                  const Row(
                    children: [
                      Text('19.99 €',style:Styles.textStyle20,),
                      Spacer(),
                      BookingRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
