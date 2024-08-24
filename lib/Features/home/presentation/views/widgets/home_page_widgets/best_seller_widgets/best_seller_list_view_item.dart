import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/widgets/book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.image, required this.title, required this.authorName, required this.rating, required this.preview, }) : super(key: key);
final String image;
final String title;
final String authorName;
final num ?rating;
final String preview;
  @override
  Widget build(BuildContext context) {
    print('-------------------------------------$preview');
    // const defaultImageUrl = 'https://img.freepik.com/free-vector/abstract-monocolor-winter-book-cover_23-2148801464.jpg?t=st=1724542469~exp=1724546069~hmac=06fc94dd20bd80a4c9e925e6effa31271611695b0c64978a50372204a5498dd5&w=740';
    //
    // // Ensure image URL is valid
    // final imageUrl = image.isNotEmpty ? image : defaultImageUrl;
    return GestureDetector(
      onTap: ()
      {
        // GoRouter.of(context).push(AppRouter.kBookDetailsView, );
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BookDetailsViews(image: image,preview: preview, bookName: title, authorName: authorName, rating: rating,),
          ),

        );
      },
      child: Container(
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(imageUrl:image ,fit:BoxFit.fill, ))
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //
              //       color: Colors.greenAccent,
              //
              //       image:const DecorationImage(
              //           image:AssetImage(AssetsData.testImage,),
              //           fit: BoxFit.fill
              //       )
              //   ),
              // ),
            ),
            SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:MediaQuery.of(context).size.width *.5,
                      child:  Text('${title}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                        ,style:Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),)),
                  const  SizedBox(height:3 ,),
                   Text('${authorName}',style: Styles.textStyle14,),
                  const  SizedBox(height:3 ,),
                   Row(
                    children: [
                      Text('Free',style:Styles.textStyle20,),
                      Spacer(),
                      BookingRating(rating:rating),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
