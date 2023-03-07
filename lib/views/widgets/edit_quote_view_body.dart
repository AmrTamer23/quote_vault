import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/views/widgets/custom_app_bar.dart';
import 'package:quote_vault/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class EditQuoteViewBody extends StatelessWidget {
  const EditQuoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: [
          const CustomAppBar(title: "Edit Quote", icon: Icons.check),
          const SizedBox(
            height: 25,
          ),
          const CustomTextField(
            hint: "Edit Quote**",
            maxlines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Expanded(
                child: CustomTextField(
                  hint: "Author",
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: CustomTextField(
                  hint: "Source",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomButton(
                text: "Edit Quote",
                color: const Color(0xffDAA428),
                onTap: () {}),
          ),
        ],
      ),
    );
  }
}
