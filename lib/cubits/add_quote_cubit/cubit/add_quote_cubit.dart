import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quote_vault/constants.dart';
import 'package:quote_vault/models/quote_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'add_quote_state.dart';

class AddQuoteCubit extends Cubit<AddQuoteState> {
  AddQuoteCubit() : super(AddQuoteInitial());

  void addQuote(QuoteModel quote) async {
    emit(AddQuoteLoading());

    try {
      var quoteBox = Hive.box<QuoteModel>(kQuoteBox);
      await quoteBox.add(quote);
      emit(AddQuoteDone());
    } catch (e) {
      emit(AddQuoteFailed(eMessage: e.toString()));
    }
  }
}
