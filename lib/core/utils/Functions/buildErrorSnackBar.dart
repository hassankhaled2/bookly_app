import 'package:flutter/material.dart';


SnackBar buildErrorSnackBar(String errorMessage) {
  return SnackBar(
    content: Text(errorMessage),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    dismissDirection: DismissDirection.horizontal,
  );
}