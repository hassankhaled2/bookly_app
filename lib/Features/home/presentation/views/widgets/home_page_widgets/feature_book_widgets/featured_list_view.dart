import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/entites/book_entity.dart';
import '../../../../../../../core/widgets/custom_book_image.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({Key? key, required this.books}) : super(key: key);
  final List<BookEntity>books;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
late  ScrollController _scrollController ;
var nextPage=1;

var isLoading=false;

  @override
  void initState() {
    super.initState();
// addlistener علشان تlisten على كل حاجه بتحصل فى الlistview
    _scrollController   = ScrollController();
    _scrollController.addListener(_scrollListener);
  }


  void _scrollListener() async{
    //يبقولك انت فين فى list
    var currentPosition=_scrollController.position.pixels;
    var maxScrollLength=_scrollController.position.maxScrollExtent;
    if (currentPosition >=  0.7 * maxScrollLength ) {
     if(!isLoading)
     {
       // Todo مش فاهم دى (fix error with pagination)
       isLoading=true;
     await  BlocProvider.of<FeaturedBooksCubit>(context).fetchFeatureBooks(pageNumber: nextPage++);
       isLoading=false;
     }
    }
  }

@override
void dispose()
{
  _scrollController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        // يراقب الScroll اللى بيحصل فى ال listview
          controller: _scrollController,

          itemCount:widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {

            return InkWell(
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BookDetailsViews(image: widget.books[index].image??'', preview:widget.books[index].previewLink??'' , bookName:widget.books[index].title??'' , authorName:widget.books[index].authorName??'', rating: widget.books[index].rating??4.2)));
              },
              child: Padding(

                padding:  const EdgeInsets.symmetric(horizontal: 5),
                child:  CustomBookImage(image: widget.books[index].image??'',),
              ),
            );
          }),

    );
  }
}

// print('book list ${books.length}');