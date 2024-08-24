import 'package:bookly_app/Features/home/presentation/views/widgets/home_page_widgets/search_widgets/test3.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import 'feature_book_widgets/featured_books_list_view_bloc_consumer.dart';
import 'best_seller_widgets/best_seller_list_view_bloc_consumer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                // SearchBlocBuilder(),
                SizedBox(height:10 ,),
                FeaturedBooksListViewBlocConsumer(),
                SizedBox(height: 50,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Best Seller', style: Styles.textStyle18,),
                ),
                SizedBox(height: 20,),

              ]
          ),
        ),
        SliverFillRemaining (
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 30),
            child: BestSellerListViewBlocConsumer(),
          ),
        )
      ],
    );
  }
}

