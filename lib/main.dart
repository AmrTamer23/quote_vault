import 'package:flutter/material.dart';
import 'package:quote_vault/constants.dart';
import 'package:quote_vault/cubits/add_quote_cubit/cubit/add_quote_cubit.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';

import 'package:quote_vault/models/quote_model.dart';
import 'package:quote_vault/views/quotes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_bloc_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(QuoteModelAdapter());
  await Hive.openBox<QuoteModel>(kQuoteBox);
  runApp(const QuotesVault());
}

class QuotesVault extends StatelessWidget {
  const QuotesVault({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const QuotesView(),
      ),
    );
  }
}
