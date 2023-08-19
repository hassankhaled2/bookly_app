import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

       CustomAppBar(),
        FeaturedBooksListView(),
         SizedBox(height: 50,),
        Text('Best Seller',style:Styles.textStyle18,),
            SizedBox(height: 20,),
            BestSellerListViewItem()
      ]
      ),
    );
  }
}




class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Column(
            children: [
              SizedBox(
                width:MediaQuery.of(context).size.width *.5,
                  child: Text('Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis
                    ,style:Styles.textStyle20,)),
            ],
          )
        ],
      ),
    );
  }
}