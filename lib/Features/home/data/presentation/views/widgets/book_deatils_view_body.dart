import 'package:bookly_app/Features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/similar_books_Section.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'books_actions.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                    child: SizedBox(
                  height: 25,
                )),
                SimilarBooksSections(),
                SizedBox(
                  height: 15,
                ),
                SimilarBooksListView(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


