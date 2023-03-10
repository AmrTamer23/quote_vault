import 'package:flutter/material.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_vault/views/widgets/quote_item.dart';

class SearchQuotesListView extends StatelessWidget {
  const SearchQuotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<QuotesCubit>(context);
    return BlocBuilder<QuotesCubit, QuotesState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: cubit.searchedQuotes.length,
            padding: const EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: QuoteItem(
                  quoteModel: cubit.searchedQuotes[index],
                ),
              );
            });
      },
    );
  }
}
