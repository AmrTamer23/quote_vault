import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/views/widgets/quotes_view_body.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuotesViewBody(),
    );
  }
}
