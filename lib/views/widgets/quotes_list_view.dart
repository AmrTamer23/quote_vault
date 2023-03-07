import 'package:flutter/material.dart';

import 'custom_quote_item.dart';

class QuotesListView extends StatelessWidget {
  const QuotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (index, context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const QuoteItem(),
          );
        });
  }
}
