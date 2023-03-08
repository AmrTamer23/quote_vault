part of 'add_quote_cubit.dart';

@immutable
abstract class AddQuoteState {}

class AddQuoteInitial extends AddQuoteState {}

class AddQuoteLoading extends AddQuoteState {}

class AddQuoteDone extends AddQuoteState {}

class AddQuoteFailed extends AddQuoteState {
  final String eMessage;
  AddQuoteFailed({required this.eMessage});
}
