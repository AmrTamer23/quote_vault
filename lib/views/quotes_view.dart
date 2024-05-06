import 'package:flutter/material.dart';
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
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddQuoteBottomSheet();
              });
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: const QuotesViewBody(),
    );
  }
}
