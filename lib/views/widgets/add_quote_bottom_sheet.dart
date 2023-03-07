import 'package:flutter/material.dart';
import 'package:quote_vault/views/widgets/custom_button.dart';
import 'package:quote_vault/views/widgets/custom_text_field.dart';

class AddQuoteBottomSheet extends StatelessWidget {
  const AddQuoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: AddNewQuoteForm(),
      ),
    );
  }
}

class AddNewQuoteForm extends StatefulWidget {
  const AddNewQuoteForm({
    super.key,
  });

  @override
  State<AddNewQuoteForm> createState() => _AddNewQuoteFormState();
}

class _AddNewQuoteFormState extends State<AddNewQuoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? quote, author, source;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          CustomTextField(
            hint: "Write The Quote Here",
            maxlines: 5,
            onSaved: (value) {
              quote = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hint: "Author",
                  onSaved: (value) {
                    quote = value;
                  },
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: CustomTextField(
                  hint: "Source",
                  onSaved: (value) {
                    quote = value;
                  },
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
                text: "Add Quote",
                color: const Color(0xffDAA428),
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                }),
          ),
        ],
      ),
    );
  }
}
