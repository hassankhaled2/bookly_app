import 'package:flutter/material.dart';

import '../../../domain/entites/book_entity.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key, required this.books}) : super(key: key);
final List<BookEntity>books;
  @override
  Widget build(BuildContext context) {
     // print('book list ${books.length}');
     return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        itemCount:books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {

            return Padding(

              padding:  const EdgeInsets.symmetric(horizontal: 5),
              child:  CustomBookImage(image: books[index].image??'',),
            );
          }),

    );
  }
}