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
