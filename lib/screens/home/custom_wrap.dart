import 'package:bairro_landing_page/components/title_text.dart';
import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({
    Key? key, required this.title, required this.subTitle, this.invert = false
  }) : super(key: key);
  final String title;
  final String subTitle;
  final bool invert;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        if(invert)
          ...[
            SizedBox(
              height: 500,
              child: Image.asset('assets/prints.png'),
            ),
            TextWrap(title: title, subTitle: subTitle),
          ],
        if(!invert)
          ...[
            TextWrap(title: title, subTitle: subTitle),
            SizedBox(
              height: 500,
              child: Image.asset('assets/prints.png'),
            )
          ]

      ],
    );
  }
}

class TextWrap extends StatelessWidget {
  const TextWrap({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: title, fontSize: 30,),
          SubText(
            text:
              subTitle,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          )
        ],
      ),
    );
  }
}
