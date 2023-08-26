import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

import 'book_rating.dart';
import 'books_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'The Jungle Book',
          style:
          Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
            opacity: .8,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            )),
        const SizedBox(
          height: 20,
        ),
        const BookingRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BooksActions(),


      ],
    );
  }
}