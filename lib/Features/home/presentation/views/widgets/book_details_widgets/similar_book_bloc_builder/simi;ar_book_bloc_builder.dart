import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../manager/featured_books_cubit/featured_books_cubit.dart';
import '../similar_book/similar_books_list_view.dart';

class SimilarBookBlocBuilder extends StatelessWidget {
  const SimilarBookBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(

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
    );
  }
}
