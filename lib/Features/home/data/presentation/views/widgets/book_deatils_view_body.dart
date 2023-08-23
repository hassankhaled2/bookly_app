import 'package:bookly_app/Features/home/data/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children:
        [
          CustomBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*.19),
            child: CustomBookImage(),
          )
        ],
      ),
    );
  }
}
