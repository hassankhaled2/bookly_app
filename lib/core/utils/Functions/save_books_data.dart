import 'package:hive/hive.dart';

import '../../../Features/home/domain/entites/book_entity.dart';

void saveBooksData(List<BookEntity> books,String BoxName) {
  var box =Hive.box<BookEntity>(BoxName);
  box.addAll(books);
}