// import 'package:bookly_app/core/widgets/custom_book_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../manager/featured_books_cubit/featured_books_cubit.dart';
// import 'book_details_view.dart';
//
// class g extends StatelessWidget {
//   const g({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
//       builder: (context, state) {
//         if (state is FeatureBooksSuccess) {
//           return ListView.builder(
//             itemCount: state.books.length,
//             itemBuilder: (context, index) {
//               final book = state.books[index];
//               return CustomBookImage(
//               image:book.image??'',
//
//               );
//             },
//           );
//         } else if (state is FeaturedBooksFailure) {
//           return Text('Failed to load books');
//         }
//         return CircularProgressIndicator();
//       },
//     )
//     ;
//   }
// }
