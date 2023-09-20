import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/use_cases/fetch_news_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';


part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewsBooksUseCase) : super(NewestBooksInitial());

  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  Future<void>fetchNewestBooks({int pageNumber=0})
  async {
    emit(NewestBooksLoading());
    var result=await fetchNewsBooksUseCase.call(pageNumber);
    result.fold((failure)
    {
      emit(NewestBooksFailure(failure.message));
    }, (books)
    {
      emit(NewestBooksSuccess(books));

    });
  }
}
