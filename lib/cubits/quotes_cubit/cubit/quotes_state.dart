part of 'quotes_cubit.dart';

@immutable
abstract class QuotesState {}

class QuotesInitial extends QuotesState {}

class QuoteLoading extends QuotesState {}

class QuoteDone extends QuotesState {}

class QuoteFailed extends QuotesState {
  final String eMessage;
  QuoteFailed({required this.eMessage});
}

class QuoteSearchLoading extends QuotesState {}

class QuoteSearchDone extends QuotesState {}

class QuoteSearchFailed extends QuotesState {
  final String eMessage;
  QuoteSearchFailed({required this.eMessage});
}
