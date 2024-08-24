import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:flutter/material.dart';

import '../best_seller_widgets/best_seller_list_view_item.dart';



class SearchResultSuggestionsBody extends StatelessWidget {
  const SearchResultSuggestionsBody({super.key, required this.query, required this.article,});
  final String query;
  final  List<BookEntity>article;
  @override
  Widget build(BuildContext context) {

    final listItem=query.isEmpty?article:article.where((student) =>student.title.toLowerCase().startsWith(query.toLowerCase().toString())).toList();
    return listItem.isEmpty?const Center(child: Text('No Data Found!')):ListView.builder(
        itemCount:listItem.length ,
        itemBuilder:(context,index)
        {
          return BookListViewItem(
            title:article[index].title??'' ,image:article[index].image??'' ,rating:article[index].rating??4.2 ,authorName:article[index].authorName??'',preview:article[index].previewLink??'',
          );
        }
    );
  }
}
