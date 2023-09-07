
import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entites/book_entity.dart';

abstract class HomeLocalDataSource
{
  List<BookEntity>fetchFeaturedBooks();
  // عملت Return ل class failure

  Future<List<BookEntity>>fetchNewsBooks();
}
class HomeDataSourceImpl extends HomeLocalDataSource
{
  @override
  List<BookEntity> fetchFeaturedBooks() {
   var box =Hive.box<BookEntity>(KFeaturedBox);
   return box.values.toList();
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }

}