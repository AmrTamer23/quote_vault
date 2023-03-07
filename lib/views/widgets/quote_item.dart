import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quote_vault/views/edit_quote_view.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem({super.key});

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
            color: Colors.black26, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              // ignore: prefer_const_constructors
              title: Text(
                "Flutter Tips",
                style: const TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Bla Bla Bla Bla",
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
                "May 21, 2023",
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
