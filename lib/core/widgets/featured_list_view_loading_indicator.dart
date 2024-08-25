import 'package:bookly_app/core/widgets/custom_book_image_loading_indicator.dart';
import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.3,
        child: ListView.builder(
          // يراقب الScroll اللى بيحصل فى ال listview

            itemCount:15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)
            {

              return const Padding(

                padding:  EdgeInsets.symmetric(horizontal: 5),
                child:  CustomBookImageLoadingIndicator(),
              );
            }),

      ),
    );
  }
}
