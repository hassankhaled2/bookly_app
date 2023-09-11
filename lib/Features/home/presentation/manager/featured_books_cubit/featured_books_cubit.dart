import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
