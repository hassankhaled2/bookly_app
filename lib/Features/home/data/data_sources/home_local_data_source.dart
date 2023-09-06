
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
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }

}