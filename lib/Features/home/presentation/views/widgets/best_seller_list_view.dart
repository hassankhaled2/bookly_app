import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;


  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
 late final ScrollController _scrollController ;
 var isLoading=false;
 var nextPage=1;
 @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async{
    //يبقولك انت فين فى list
    var currentPosition=_scrollController.position.pixels;
    var maxScrollLength=_scrollController.position.maxScrollExtent;
    if (currentPosition >=  0.9* maxScrollLength ) {
      if(!isLoading)
      {
        // Todo مش فاهم دى (fix error with pagination)
        isLoading=true;
        await BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks(pageNumber:nextPage++);;
        isLoading=false;
      }

      //increment

    }
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(
              image: widget.books[index].image ?? '',
              title: widget.books[index].title,
              authorName: widget.books[index].authorName ?? '',
              rating: widget.books[index].rating ?? 4.2,
            ),
          );
        }
    );
  }
}
