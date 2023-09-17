import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void>fetchFeatureBooks({int pageNumber=0})

  async {
    // emit(FeaturedBooksPaginationFailure('failure.message')) ;
    if(pageNumber==0)
    {
      emit(FeaturedBooksLoading());
    }else
    {
      emit(FeaturedBooksPaginationLoading());
    }

   var result=await featureBooksUseCase.call(pageNumber);
   //عمل call لpagenumber كده ازاى todo
   result.fold((failure)
   {
     if(pageNumber==0)
     {
       emit(FeaturedBooksFailure(failure.message));
     }else
     {
         emit(FeaturedBooksPaginationFailure(failure.message));
     }

   }, (books)
   {
     emit(FeaturedBooksSuccess(books));

   });
  }
}
