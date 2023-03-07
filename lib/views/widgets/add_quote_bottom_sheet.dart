import 'package:flutter/material.dart';
import 'package:quote_vault/views/widgets/custom_button.dart';
import 'package:quote_vault/views/widgets/custom_text_field.dart';

class AddQuoteBottomSheet extends StatelessWidget {
  const AddQuoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(hint: "Write The Quote Here", maxlines: 5),
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CustomButton(
                  text: "Add Quote",
                  color: const Color(0xffDAA428),
                  onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
