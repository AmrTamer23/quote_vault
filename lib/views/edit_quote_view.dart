import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/views/widgets/edit_quote_view_body.dart';

class EditQuoteView extends StatelessWidget {
  const EditQuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditQuoteViewBody(),
    );
  }
}
