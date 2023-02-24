import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../const.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key, required this.text,
    this.color,
    this.fontSize = 40
  }) : super(key: key);
  final String text;
  final Color? color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      child: SelectableText(
        text,
        style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.w900, fontSize: fontSize, color: color ?? kPrimary),
      ),
    );
  }
}

class SubText extends StatelessWidget {
  const SubText({
    Key? key, required this.text,
    this.color,
    this.fontSize =21,
    this.fontWeight = FontWeight.w600
  }) : super(key: key);
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      child: SelectableText(
        text,
        style: GoogleFonts.sourceSansPro(
             color: color ?? kPrimary, fontWeight: fontWeight, fontSize: fontSize),
      ),
    );
  }
}
