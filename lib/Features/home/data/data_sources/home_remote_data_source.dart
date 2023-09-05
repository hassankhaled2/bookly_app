import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entites/book_entity.dart';
// بيجيب ال Data بس
abstract class HomeRemoteDataSource
{
  Future<List<BookEntity>>fetchFeaturedBooks();
  // عملت Return ل class failure

  Future<List<BookEntity>>fetchNewsBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource
{
final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async
  {
   var data= await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=programming');
   // var -->map list of string and dynamic
   List<BookEntity> books = getBooksList(data);
 return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() async{
    var data= await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    // var -->map list of string and dynamic
    List<BookEntity> books = getBooksList(data);
    return books;
  }
List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books =[];
  for(var bookMap in data['items'])
  {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
}