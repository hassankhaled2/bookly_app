import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../home/presentation/views/widgets/home_page_widgets/best_seller_widgets/best_seller_list_view_item.dart';



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
            title:listItem[index].title??'' ,image:listItem[index].image??'' ,rating:listItem[index].rating??4.2 ,authorName:listItem[index].authorName??'',preview:listItem[index].previewLink??'',
          );
        }
    );
  }
}
