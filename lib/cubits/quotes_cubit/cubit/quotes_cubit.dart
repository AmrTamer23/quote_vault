import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quote_vault/models/quote_model.dart';
import 'package:quote_vault/views/widgets/lang_detector.dart';

import '../../../constants.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesInitial());

  List<QuoteModel> quotesList = [];

  var quoteBox = Hive.box<QuoteModel>(kQuoteBox);

  fetchAllQuotes() {
    quotesList = quoteBox.values.toList();
    emit(QuoteDone());
  }

  List<QuoteModel> searchedQuotes = [];

  searchQuote(String word) {
    searchedQuotes = [];

    searchedQuotes = quoteBox.values
        .where(
            (quote) => quote.quote.toLowerCase().contains(word.toLowerCase()))
        .where(
            (quote) => quote.author.toLowerCase().contains(word.toLowerCase()))
        .where(
            (quote) => quote.source.toLowerCase().contains(word.toLowerCase()))
        .toList();

    emit(QuoteSearchDone());
  }
}
