import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entites/book_entity.dart';

class FetchFeatureBooksUseCase
{
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase(this.homeRepo);
  Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks()
  {
  //  هنا ال use case
    // check permission
  return homeRepo.fetchFeaturedBooks();
  //انت هنا مجرد علمت method فقط  علشان تستدعى ال method اللى فى ال Home repo
  // ممكن هتضيف حاجه مستقبلا هنا علشان كده مهمه
  }
}