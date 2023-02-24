import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../components/title_text.dart';
import 'image_hero.dart';

class WidgetMainHome extends StatelessWidget {
  const WidgetMainHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(
        flip: true,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primary,
            ],
            center: Alignment.topLeft,

          ),
        ),
        height: 700,
        child: LayoutBuilder(builder: (context, constraint) {
          late double widthText;
          if (constraint.maxWidth > 785) {
            widthText = 560.0;
          } else {
            widthText = constraint.maxWidth / 2;
          }
          if (constraint.minWidth <= 500) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Left(),
                    SizedBox(height: 300, child: ImageHero())
                  ],
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: widthText,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Left()
                    ],
                  ),
                ),
                const Flexible(child: ImageHero())
              ],
            ),
          );
        }),
      ),
    );
  }
}


class Left extends StatelessWidget {
  const Left({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleText(
          text: "bairro",
          color: Colors.white,
        ),
        const SubText(
          text:
          "O bairo é o aplicativo de segurança que você precisa ter em seu celular. Com ele, você pode solicitar patrulhas em tempo real, monitorar a sua rua e a vizinhança, além de receber alertas sobre atividades suspeitas. \nBaixe agora mesmo e tenha a proteção que você merece.",
          color: Colors.white,
        ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: ()async{

          const url =
              'https://play.google.com/store/apps/details?id=br.com.antunes.safe_neighborhood';
          if (!await launchUrlString(url)) {
          throw Exception('Could not launch $url');
          }
        }, child: const Text("Baixe agora")),

      ],
    );
  }
}

