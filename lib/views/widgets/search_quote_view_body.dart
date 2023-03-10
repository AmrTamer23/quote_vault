import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';

import 'package:quote_vault/views/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_vault/views/widgets/quote_item.dart';
import 'package:quote_vault/views/widgets/search_quotes_list_view.dart';

class SearchQuoteViewBody extends StatefulWidget {
  const SearchQuoteViewBody({super.key});

  @override
  State<SearchQuoteViewBody> createState() => _SearchQuoteViewBodyState();
}

class _SearchQuoteViewBodyState extends State<SearchQuoteViewBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<QuotesCubit>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 90, left: 16, right: 16),
      child: Column(
        children: [
          CustomTextField(
            hint: "Search a Quote",
            onChanged: (data) {
              cubit.searchQuote(data);
              if (data == '') {
                cubit.searchedQuotes = [];
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(child: SearchQuotesListView()),
        ],
      ),
    );
  }
}
