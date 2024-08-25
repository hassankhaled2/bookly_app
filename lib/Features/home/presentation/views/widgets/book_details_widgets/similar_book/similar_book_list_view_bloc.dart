//
// import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
// import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
// import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
// import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../../core/utils/Functions/buildErrorSnackBar.dart';
//
// class SimilarBookListViewBloc extends StatefulWidget {
//   const SimilarBookListViewBloc({
//     super.key,
//   });
//
//   @override
//   State<SimilarBookListViewBloc> createState() => _SimilarBookListViewBlocState();
// }
//
// class _SimilarBookListViewBlocState extends State<SimilarBookListViewBloc> {
//   List<BookEntity>books=[];
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<FeaturedBooksCubit,FeaturedBooksState>(
//       listener: (context,state)
//       {
//         if(state is FeatureBooksSuccess)
//         {
//           books.addAll(state.books);
//         }
//         if(state is FeaturedBooksFailure)
//         {
//           ScaffoldMessenger.of(context).showSnackBar(buildErrorSnackBar(state.errorMessage));
//         }
//       },
//       builder: (context, state) {
//         if(state is NewestBooksSuccess||state is NewestBooksPaginationLoading||state is NewestBooksPaginationFailure)
//         {
//           return SimilarBooksListView(book:books);
//         }else if(state is FeaturedBooksFailure )
//         {
//           return Text(state.errorMessage);
//         }else
//         {
//           return const CircularProgressIndicator();
//         }
//
//       },
//     );
//   }
// }