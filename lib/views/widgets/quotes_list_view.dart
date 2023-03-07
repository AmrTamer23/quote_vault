import 'package:flutter/material.dart';

import 'quote_item.dart';

class QuotesListView extends StatelessWidget {
  const QuotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(0),
          itemBuilder: (index, context) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: QuoteItem(),
            );
          }),
    );
  }
}
