
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/Functions/buildErrorSnackBar.dart';
import 'best_seller_list_view.dart';

class BestSellerListViewBlocConsumer extends StatefulWidget {
  const BestSellerListViewBlocConsumer({
    super.key,
  });

  @override
  State<BestSellerListViewBlocConsumer> createState() => _BestSellerListViewBlocConsumerState();
}

class _BestSellerListViewBlocConsumerState extends State<BestSellerListViewBlocConsumer> {
  List<BookEntity>books=[];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit,NewestBooksState>(
      listener: (context,state)
      {
        if(state is NewestBooksSuccess)
        {
          books.addAll(state.books);
        }
        if(state is NewestBooksPaginationFailure)
        {
          ScaffoldMessenger.of(context).showSnackBar(buildErrorSnackBar(state.errorMessage));
        }
      },
      builder: (context, state) {
        if(state is NewestBooksSuccess||state is NewestBooksPaginationLoading||state is NewestBooksPaginationFailure)
        {
          return BestSellerListView(books:books);
        }else if(state is NewestBooksFailure )
        {
         return Text(state.errorMessage);
        }else
        {
          return const CircularProgressIndicator();
        }

      },
    );
  }
}