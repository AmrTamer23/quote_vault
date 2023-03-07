import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quote_vault/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Quotes Vault",
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
