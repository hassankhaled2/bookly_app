import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/Functions/save_books_data.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entites/book_entity.dart';
 // بيجيب ال Data بس مش مهمته ان يقولى الييانات جت بشكل سليم ولا لا
abstract class HomeRemoteDataSource
{
  Future<List<BookEntity>>fetchFeaturedBooks({int pageNumber=0});
  Future<List<BookEntity>>fetchNewsBooks({int pageNumber=0});
}


class HomeRemoteDataSourceImpl extends HomeRemoteDataSource
{
final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);



  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber=0}) async {
   var data= await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber*10}');
   List<BookEntity> books = getBooksList(data);

   // هنا خزنت الData اللى جتلك
   saveBooksData(books,KFeaturedBox);

   return books;
  }




  @override
  Future<List<BookEntity>> fetchNewsBooks({int pageNumber=0}) async{
    var data= await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber*10}&Sorting=newest');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,KNewestBox);
    return books;
  }


  List<BookEntity> getBooksList(Map<String, dynamic> data) {

  List<BookEntity> books =[];
  for(var bookMap in data['items'])
  {
    // BookModel book =BookModel.fromJson(bookMap);
    // books.add(book);
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
}