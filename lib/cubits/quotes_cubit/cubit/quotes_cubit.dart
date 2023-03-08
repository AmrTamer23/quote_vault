import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quote_vault/models/quote_model.dart';

import '../../../constants.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesInitial());

  List<QuoteModel> quotesList = [];

  fetchAllQuotes() {
    var quoteBox = Hive.box<QuoteModel>(kQuoteBox);
    quotesList = quoteBox.values.toList();
    emit(QuoteDone());
  }
}
