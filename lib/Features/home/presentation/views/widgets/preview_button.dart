
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../core/widgets/custom_button.dart';

class PreviewButton  extends StatelessWidget {
const PreviewButton({Key? key, required this.preview}) : super(key: key);
final String preview;
// late final BookEntity bookEntity;
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child:  Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the button
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), // Border radius of the button
            ),
            alignment: Alignment.center, // Align the text in the center
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Adjust padding as needed
            child: Text(
              "Free",
              style: TextStyle(
                color: Colors.black, // Text color
                fontSize: 16, // Font size, adjust as needed
              ),
            ),
          ),
        ),
        Expanded(child:
        CustomButton(
          backgroundColor:Color(0xffEF8262),
          TextColor: Colors.white,borderRadius:BorderRadius.only(topRight:Radius.circular(16),bottomRight:Radius.circular(16)),text: "Preview", fontSize: 16,onPressed: ()
        async {
          Uri uri = Uri.parse(preview);
          await launchUrl(uri);
          // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>WebViewWidgets(url: preview)));
        },))
      ],
    ),
  );
}
}