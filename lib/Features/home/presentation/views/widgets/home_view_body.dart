import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'custom_book_image.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Best Seller',style:Styles.textStyle18,),
                ),
                SizedBox(height: 20,),

              ]
          ),
        ),
 SliverFillRemaining(
   child: Padding(
     padding: const EdgeInsets.symmetric(
         horizontal: 30),
     child: BestSellerListView(),
   ),
 )
      ],
    );

  }
}






