import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quote_vault/models/quote_model.dart';

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

  searchQuote(word) {
    searchedQuotes = [];
    searchedQuotes +=
        quoteBox.values.where((quote) => quote.quote.contains(word)).toList();
    searchedQuotes +=
        quoteBox.values.where((quote) => quote.author.contains(word)).toList();
    searchedQuotes +=
        quoteBox.values.where((quote) => quote.source.contains(word)).toList();
    emit(QuoteSearchDone());
  }
}
