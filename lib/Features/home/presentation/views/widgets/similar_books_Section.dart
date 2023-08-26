import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/styles.dart';

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
      ],
    );
  }
}