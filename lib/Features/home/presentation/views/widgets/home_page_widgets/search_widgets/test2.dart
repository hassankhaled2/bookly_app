
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_page_widgets/search_widgets/test.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';


class ArticleSearchDelegate extends SearchDelegate
{
  List<BookEntity>article;
  ArticleSearchDelegate({required this.article});
  @override
  String get searchFieldLabel =>'Search for article';
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
       appBarTheme: AppBarTheme(color: KPrimaryColor),
      //! remove line under the search TextFormField
      inputDecorationTheme:InputDecorationTheme(border:InputBorder.none ) ,
        // hintColor: Colors.black,
        // textTheme:const TextTheme(titleLarge:TextStyle(color:Colors.black,fontWeight:FontWeight.bold  ))
    );
  }
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: ()
      {
        // you can considered query is TextEditingController for this TextField
        query ='';
      }, icon:const Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: ()
    {
      Navigator.of(context).pop();
    }, icon:const Icon(Icons.navigate_before));
  }

  @override
  Widget buildResults(BuildContext context) {
    return  SearchResultSuggestionsBody(query: query,article: article,);
  }
// to show suggestions to user
  @override
  Widget buildSuggestions(BuildContext context) {
    return  SearchResultSuggestionsBody(query: query,article: article,);

  }

}