import 'package:flutter/material.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'quote_item.dart';

class QuotesListView extends StatelessWidget {
  const QuotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<QuotesCubit>(context);
    var quoteslist = cubit.quotesList;
    return BlocBuilder<QuotesCubit, QuotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
              itemCount: quoteslist.length,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: QuoteItem(
                    quote: quoteslist[index].quote,
                    author: quoteslist[index].author,
                    color: quoteslist[index].color,
                    date: quoteslist[index].date,
                    source: quoteslist[index].source,
                  ),
                );
              }),
        );
      },
    );
  }
}
