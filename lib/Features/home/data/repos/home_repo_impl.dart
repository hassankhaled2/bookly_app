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
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber=0})async {
    try
    {
      List<BookEntity> booksList;
       booksList = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if(booksList.isNotEmpty)
      {
        return right(booksList);
      }
      booksList = await homeRemoteDataSource.fetchFeaturedBooks(pageNumber:pageNumber );
      return right(booksList);
    } catch(e)
    {
      if (e is DioError) {
        return left(
          ServerFailure.fromDiorError(e),
        );
      }
      // مش فاهم
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
      List<BookEntity> booksList;
       booksList= homeLocalDataSource.fetchNewsBooks();
      if(booksList.isNotEmpty)
      {
        return right(booksList);
      }
       booksList =await homeRemoteDataSource.fetchNewsBooks();
      return right(booksList);
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