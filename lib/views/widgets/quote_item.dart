import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quote_vault/cubits/quotes_cubit/cubit/quotes_cubit.dart';
import 'package:quote_vault/views/edit_quote_view.dart';
import 'package:quote_vault/views/widgets/custom_button.dart';
import '../../models/quote_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'lang_detector.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem({
    super.key,
    required this.quoteModel,
  });

  final QuoteModel quoteModel;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<QuotesCubit>(context);
    return GestureDetector(
      onLongPress: () {
        showDialog(
            context: context,
            builder: ((context) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do You Want To Delete This Quote ?"),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomButton(
                                    text: "Delete",
                                    color: Colors.redAccent,
                                    onTap: () {
                                      quoteModel.delete();
                                      Navigator.pop(context);
                                      cubit.fetchAllQuotes();
                                    }),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomButton(
                                  text: "Cancel",
                                  color: Colors.grey,
                                  onTap: () => Navigator.pop(context),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
      },
      onDoubleTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditQuoteView(
            quoteModel: quoteModel,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(quoteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              // ignore: prefer_const_constructors
              title: Text(
                isEnglish(quoteModel.quote)
                    ? '"${quoteModel.quote}"'
                    : '«${quoteModel.quote}»',
                maxLines: 10,
                textDirection: !isEnglish(quoteModel.quote)
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily:
                        !isEnglish(quoteModel.quote) ? 'Kufam' : 'Poppins'),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "${quoteModel.author}, ${quoteModel.source}",
                  style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontFamily:
                          !isEnglish(quoteModel.quote) ? 'Kufam' : 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
