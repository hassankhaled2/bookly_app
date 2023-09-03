

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/use_cases/use_cases.dart';
import '../entites/book_entity.dart';
import '../repos/home_repo.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntity>,NoParam>
{
  //ممكن تشيل class Noparam و تستخدم كلمه void
  final HomeRepo homeRepo;

  FetchNewsBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam?param]) async {

    return await homeRepo.fetchNewsBooks();
  }
// FetchFeatureBooksUseCase(this.homeRepo);
// Future<Either<Failure,List<BookEntity>>> call()
// {
//   //call or execute
// //  هنا ال use case
//   // check permission
// return homeRepo.fetchFeaturedBooks();
// //انت هنا مجرد علمت method فقط  علشان تستدعى ال method اللى فى ال Home repo
// // ممكن تضيف حاجه مستقبلا هنا علشان كده مهمه
// }
}
