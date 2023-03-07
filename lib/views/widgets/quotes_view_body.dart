import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_quote_item.dart';

class QuotesViewBody extends StatelessWidget {
  const QuotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          CustomAppBar(),
          QuoteItem(),
        ],
      ),
    );
  }
}
