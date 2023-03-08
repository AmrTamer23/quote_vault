import 'package:flutter/material.dart';
import 'package:quote_vault/cubits/add_quote_cubit/cubit/add_quote_cubit.dart';
import 'package:quote_vault/models/quote_model.dart';
import 'package:intl/intl.dart';
import 'custom_button.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  Color? color = Colors.black;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AddQuoteCubit>(context);
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
                    author = value;
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
                    source = value;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: "Pick a Color",
            onTap: () async {
              color = await showColorPickerDialog(context, Colors.black);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: BlocBuilder<AddQuoteCubit, AddQuoteState>(
              builder: (context, state) => CustomButton(
                  text: "Add Quote",
                  isLoading: state is AddQuoteLoading ? true : false,
                  color: const Color(0xffDAA428),
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var now = DateTime.now();
                      var formattedDate = DateFormat('MMM d, yyy').format(now);
                      var quoteModel = QuoteModel(
                          quote: quote!,
                          author: author!,
                          source: source!,
                          date: formattedDate,
                          color: color!.value);
                      cubit.addQuote(quoteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
