import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entites/book_entity.dart';

abstract class HomeRepo
{
 Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks({int pageNumber=0});
 // عملت Return ل class failure

 Future<Either<Failure,List<BookEntity>>>fetchNewsBooks({int pageNumber=0});
//تحديد ايه اللى هيحصل فى feature
}
//     كل   method  هنعملها class فى ال use case