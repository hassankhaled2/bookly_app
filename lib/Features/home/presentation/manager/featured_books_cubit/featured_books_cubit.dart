import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void>fetchFeatureBooks()
  async {
    emit(FeaturedBooksLoading());
   var result=await featureBooksUseCase.call();
   result.fold((failure)
   {
     emit(FeaturedBooksFailure(failure.message));
   }, (books)
   {
     emit(FeaturedBooksSuccess(books));

   });
  }
}
