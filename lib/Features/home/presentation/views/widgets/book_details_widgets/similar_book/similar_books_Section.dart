import 'package:flutter/cupertino.dart';

import '../../../../../../../../core/utils/styles.dart';
import '../similar_book_bloc_builder/simi;ar_book_bloc_builder.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     // crossAxisAlignment: CrossAxisAlignment.start,
      //مش شغاله !!
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SimilarBookBlocBuilder(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}