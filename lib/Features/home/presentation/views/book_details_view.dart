
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_widgets/book_deatils_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViews extends StatelessWidget {
  const BookDetailsViews({Key? key, required this.image, required this.preview, required this.bookName, required this.authorName, required this.rating}) : super(key: key);
 final String image ;
 final String preview;
  final String bookName;
  final String authorName;
  final num ?rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody(image: image,preview:preview, bookName: bookName, authorName: authorName, rating:rating  ,)),
    );
  }
}
