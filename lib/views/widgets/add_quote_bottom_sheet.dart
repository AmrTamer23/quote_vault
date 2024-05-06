import 'package:flutter/material.dart';
import 'package:quote_vault/cubits/add_quote_cubit/cubit/add_quote_cubit.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_quote_form.dart';

class AddQuoteBottomSheet extends StatelessWidget {
  const AddQuoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddQuoteCubit(),
      child: BlocConsumer<AddQuoteCubit, AddQuoteState>(
        listener: (context, state) {
          if (state is AddQuoteDone) {
            BlocProvider.of<QuotesCubit>(context).fetchAllQuotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddQuoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNewQuoteForm()),
              ));
        },
      ),
    );
  }
}
