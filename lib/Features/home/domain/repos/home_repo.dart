import '../entites/book_entity.dart';

abstract class HomeRepo
{
 Future<List<BookEntity>>fetchFeaturedBooks();

 Future<List<BookEntity>>fetchNewsBooks();
//تحديد ايه اللى هيحصل فى feature
}