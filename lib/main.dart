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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const QuotesView(),
    );
  }
}
