import 'package:flutter/material.dart';
import 'package:quote_vault/views/quotes_view.dart';

void main() {
  runApp(const QuotesVault());
}

class QuotesVault extends StatelessWidget {
  const QuotesVault({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const QuotesView(),
    );
  }
}
