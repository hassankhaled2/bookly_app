import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5),
              child:  CustomBookImage(image: '',),
            );
          }),
    );
  }
}