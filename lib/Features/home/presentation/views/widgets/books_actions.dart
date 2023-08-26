import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksActions  extends StatelessWidget {
const BooksActions({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: const Row(
      children: [
        Expanded(child: CustomButton(backgroundColor:Colors.white,TextColor: Colors.black,borderRadius:BorderRadius.only(topLeft:Radius.circular(16),bottomLeft:Radius.circular(16)), text:"19.99 €", )),
        Expanded(child:
        CustomButton(
          backgroundColor:Color(0xffEF8262),
          TextColor: Colors.white,borderRadius:BorderRadius.only(topRight:Radius.circular(16),bottomRight:Radius.circular(16)),text: "Free Preview", fontSize: 16,))
      ],
    ),
  );
}
}