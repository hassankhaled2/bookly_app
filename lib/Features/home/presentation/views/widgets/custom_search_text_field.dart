import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon: IconButton(onPressed: (){},icon:const Opacity(opacity:.8 ,child: Icon(FontAwesomeIcons.magnifyingGlass,size: 22,)) ,)
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius:BorderRadius.circular(
        18,
      ),
      borderSide:const BorderSide(color: Colors.white),
    );
  }
}