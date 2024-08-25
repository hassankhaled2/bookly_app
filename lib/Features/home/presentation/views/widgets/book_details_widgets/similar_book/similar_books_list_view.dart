import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_page_widgets/best_seller_widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../domain/entites/book_entity.dart';
import '../../../../../../../core/widgets/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key, required this.book}) : super(key: key);
 final List<BookEntity>book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.16,
      child: ListView.builder(
          itemCount: book.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return  InkWell(
              onTap: ()
             async {
                Uri uri = Uri.parse(book[index].previewLink!);
                await launchUrl(uri);

              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5),
                child:  CustomBookImage(image: book[index].image??'assets/images/default_image.png',),
              ),
            );
          }),
    );
  }
}