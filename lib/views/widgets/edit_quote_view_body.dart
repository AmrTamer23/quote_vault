import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quote_vault/models/quote_model.dart';
import 'package:quote_vault/views/widgets/custom_app_bar.dart';
import 'package:quote_vault/views/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/add_quote_cubit/cubit/add_quote_cubit.dart';
import '../../cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'custom_button.dart';
import 'package:intl/intl.dart';

class EditQuoteViewBody extends StatefulWidget {
  const EditQuoteViewBody({super.key, required this.quoteModel});

  final QuoteModel quoteModel;

  @override
  State<EditQuoteViewBody> createState() => _EditQuoteViewBodyState();
}

class _EditQuoteViewBodyState extends State<EditQuoteViewBody> {
  String? quote, author, source;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Quote",
            icon: Icons.check,
            onTap: () {
              widget.quoteModel.quote = quote ?? widget.quoteModel.quote;
              widget.quoteModel.author = author ?? widget.quoteModel.author;
              widget.quoteModel.source = source ?? widget.quoteModel.source;
              widget.quoteModel.save();
              Navigator.pop(context);
              BlocProvider.of<QuotesCubit>(context).fetchAllQuotes();
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: "Edit Quote**",
            initialValue: widget.quoteModel.quote,
            onChanged: (data) => quote = data,
            maxlines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hint: "Author",
                  onChanged: (data) => author = data,
                  initialValue: widget.quoteModel.author,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: CustomTextField(
                  hint: "Source",
                  onChanged: (data) => source = data,
                  initialValue: widget.quoteModel.source,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
