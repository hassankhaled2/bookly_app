import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_news_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';
import '../../../domain/use_cases/fetch_feature_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewsBooksUseCase) : super(NewestBooksInitial());

  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  Future<void>fetchNewestBooks()
  async {
    emit(NewestBooksLoading());
    var result=await fetchNewsBooksUseCase.call();
    result.fold((failure)
    {
      emit(NewestBooksFailure(failure.message));
    }, (books)
    {
      emit(NewestBooksSuccess(books));

    });
  }
}
