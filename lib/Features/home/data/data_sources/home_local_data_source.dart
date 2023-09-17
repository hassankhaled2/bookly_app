
import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entites/book_entity.dart';

abstract class HomeLocalDataSource
{
  List<BookEntity>fetchFeaturedBooks({int pageNumber=0});
  // عملت Return ل class failure

  List<BookEntity>fetchNewsBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource
{
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0}) {
    //pagination in local data source
    int startIndex=pageNumber*10;
    int endIndex =(pageNumber+1)*10;
    //endindex---> أللى هتقف عنده
   var box =Hive.box<BookEntity>(KFeaturedBox);
   int length=box.values.length;
   //endindex 50
    // length 49

    //endindex 49
    // length 49
   if(startIndex>=length||endIndex>length)
   {
     return [];
   }
   return box.values.toList().sublist(startIndex,endIndex);
  }
// عملنا كده ليه علشان هو بيرمى exception علطول فكده (sublist)هيرمى empty list علشان نعرف بعد كده المشكله فين
  @override
  List<BookEntity> fetchNewsBooks() {
    var box =Hive.box<BookEntity>(KNewestBox);
    return box.values.toList();
  }

}