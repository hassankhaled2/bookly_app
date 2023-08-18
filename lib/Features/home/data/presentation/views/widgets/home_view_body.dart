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
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

       CustomAppBar(),
        FeaturedBooksListView(),
        const SizedBox(height: 50,),
        Text('Best Seller',style:Styles.titleMedium,),
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
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}