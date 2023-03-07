import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/views/widgets/add_quote_bottom_sheet.dart';
import 'package:quote_vault/views/widgets/quotes_view_body.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddQuoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const QuotesViewBody(),
    );
  }
}
