import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/views/widgets/search_quote_view_body.dart';

class SearchQuoteView extends StatelessWidget {
  const SearchQuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchQuoteViewBody(),
    );
  }
}
