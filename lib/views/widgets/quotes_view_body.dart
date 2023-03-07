import 'package:flutter/material.dart';
import 'package:quote_vault/views/widgets/quotes_list_view.dart';

import 'custom_app_bar.dart';
import 'quote_item.dart';

class QuotesViewBody extends StatelessWidget {
  const QuotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: const [
          CustomAppBar(
            title: "Quotes Vault",
            icon: Icons.search,
          ),
          Expanded(
            child: QuotesListView(),
          )
        ],
      ),
    );
  }
}
