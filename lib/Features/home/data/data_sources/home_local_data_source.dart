
import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entites/book_entity.dart';

abstract class HomeLocalDataSource
{
  List<BookEntity>fetchFeaturedBooks();
  // عملت Return ل class failure

  List<BookEntity>fetchNewsBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource
{
  @override
  List<BookEntity> fetchFeaturedBooks() {
   var box =Hive.box<BookEntity>(KFeaturedBox);
   return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    var box =Hive.box<BookEntity>(KNewestBox);
    return box.values.toList();
  }

}