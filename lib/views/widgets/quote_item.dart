import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quote_vault/views/edit_quote_view.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem(
      {super.key,
      required this.quote,
      required this.author,
      required this.source,
      required this.date,
      required this.color});

  final String quote;
  final String author;
  final String source;
  final String date;
  final int color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditQuoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              // ignore: prefer_const_constructors
              title: Text(
                quote,
                style: const TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "$author, $source",
                  style: TextStyle(color: Colors.white.withOpacity(.6)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                date,
                style: TextStyle(
                    color: Colors.white.withOpacity(.3), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
