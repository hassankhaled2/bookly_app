import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/widgets/book_rating.dart';
import '../../../../../../core/widgets/custom_book_image.dart';
import '../preview_button.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.image, required  this.preview, required this.bookName, required this.authorName, required this.rating}) : super(key: key);
  final String? image;
  final String preview;
  final String bookName;
  final String authorName;
  final num? rating;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:   CustomBookImage(image:image!,),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          bookName,
          style:
          Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
            opacity: .8,
            child: Text(
              authorName,
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            )),
        const SizedBox(
          height: 20,
        ),
         BookingRating(
             rating: rating,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
         PreviewButton(preview: preview,),


      ],
    );
  }
}