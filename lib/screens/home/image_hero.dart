import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageHero extends StatelessWidget {
  const ImageHero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/undraw_for_sale_re_egkk.svg',
    );
  }
}
