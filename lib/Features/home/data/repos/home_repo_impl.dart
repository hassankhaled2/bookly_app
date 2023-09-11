import 'package:bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo
{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource  homeLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()async {
    try
    {
      var bookslist =await homeLocalDataSource.fetchFeaturedBooks();
      if(bookslist.isNotEmpty)
      {
        return right(bookslist);
      }
      var books =await homeLocalDataSource.fetchFeaturedBooks();
      return right(books);
    } catch(e)
    {
      if (e is DioError) {
        return left(
          ServerFailure.fromDiorError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    try
    {
      List<BookEntity> books;
       books=await homeLocalDataSource.fetchNewsBooks();
      if(books.isNotEmpty)
      {
        return right(books);
      }
       books =await homeLocalDataSource.fetchNewsBooks();
      return right(books);
    } catch(e)
    {
      if (e is DioError) {
        return left(
          ServerFailure.fromDiorError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

}