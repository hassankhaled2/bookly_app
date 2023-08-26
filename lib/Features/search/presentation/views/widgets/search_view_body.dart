import 'package:bookly_app/Features/search/presentation/views/widgets/search_result%20_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
import '../../../../home/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                CustomSearchTextField(),
                SizedBox(height: 16,),
                Text('Search Result',style: Styles.textStyle18,),
                SizedBox(height: 16,),
                Expanded(child: SearchResultListView())
              ],
            ),
          ) ,

        )
      ],
    );
  }
}


