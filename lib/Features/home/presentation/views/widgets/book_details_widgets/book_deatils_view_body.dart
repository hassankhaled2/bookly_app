import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/similar_book/similar_books_Section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/similar_book/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/similar_book_bloc_builder/simi;ar_book_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key,required this.image,  required this.preview, required this.bookName, required this.authorName, required this.rating}) : super(key: key);
  final String image;
  final String preview;
  final String bookName;
  final String authorName;
  final num ?rating;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(image:image,preview: preview, bookName: bookName, authorName: authorName,rating:rating ),
                const SizedBox(
                  height: 120,
                ),
                const SimilarBooksSections(),

              ],
            ),
          ),
        )
      ],
    );
  }
}


