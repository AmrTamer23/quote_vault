import 'package:hive/hive.dart';

part 'quote_model.g.dart';

@HiveType(typeId: 0)
class QuoteModel extends HiveObject {
  @HiveField(0)
  String quote;
  @HiveField(1)
  String author;
  @HiveField(2)
  String source;
  @HiveField(3)
  final String date;
  @HiveField(4)
  int color;

  QuoteModel(
      {required this.quote,
      required this.author,
      required this.source,
      required this.date,
      required this.color});
}
