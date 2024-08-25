import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ArticleSearchDelegate.dart';


class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, FeaturedBooksState state)
      {
        if(state is FeatureBooksSuccess)
        {
          return  IconButton(onPressed: ()
          {
            showSearch(context: context, delegate:ArticleSearchDelegate(article:state.books) );

          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,));
        }else
        {
          return  IconButton(onPressed: ()
          {

          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,));
        }
      },
    );
  }
}
