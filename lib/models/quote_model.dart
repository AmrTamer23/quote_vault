import 'package:hive/hive.dart';

part 'quote_model.g.dart';

@HiveType(typeId: 0)
class QuoteModel extends HiveObject {
  @HiveField(0)
  final String quote;
  @HiveField(1)
  final String author;
  @HiveField(2)
  final String source;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;

  QuoteModel(
      {required this.quote,
      required this.author,
      required this.source,
      required this.date,
      required this.color});
}
