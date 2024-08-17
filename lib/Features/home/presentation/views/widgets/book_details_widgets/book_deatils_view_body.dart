import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/similar_book/similar_books_Section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/similar_book/similar_books_list_view.dart';
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
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(image:image,preview: preview, bookName: bookName, authorName: authorName,rating:rating ),
                Expanded(
                    child: SizedBox(
                      height: 25,
                    )),
                SimilarBooksSections(),
                SizedBox(
                  height: 15,
                ),
                BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
                  listener: (context, state) {
                  },
                  builder: (context, state) {
                    if(state is FeatureBooksSuccess)
                    {
                      return  SimilarBooksListView(book:state.books,);
                    }else if (state is FeaturedBooksFailure)
                    {
                      Text('');
                    }
                   return CircularProgressIndicator();
                  },
                ),
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


