import 'package:flutter/material.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'package:quote_vault/views/search_quote_view.dart';
import 'package:quote_vault/views/widgets/quotes_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_app_bar.dart';
import 'quote_item.dart';

class QuotesViewBody extends StatefulWidget {
  const QuotesViewBody({super.key});

  @override
  State<QuotesViewBody> createState() => _QuotesViewBodyState();
}

class _QuotesViewBodyState extends State<QuotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<QuotesCubit>(context).fetchAllQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: [
          CustomAppBar(
              title: "Quotes Vault",
              icon: Icons.search,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SearchQuoteView();
                }));
              }),
          const Expanded(
            child: QuotesListView(),
          )
        ],
      ),
    );
  }
}
