import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../components/title_text.dart';
import '../home/home_screen.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Divider(),
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const LogoName(),
              const SizedBox(width: 20,),
              Expanded(
                child: Column(
                  children: [
                    const TitleText(text: 'Siga nossas redes sociais',fontSize: 15),
                    Expanded(
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        alignment: WrapAlignment.center,

                        runAlignment: WrapAlignment.center ,

                        children: [
                          OutlineButtonSocial(
                            onPressed: () {  },
                            icon: 'assets/social/icon-facebook.png',
                            text: 'Facebook',
                          ),
                          OutlineButtonSocial(
                            onPressed: () {  },
                            icon: 'assets/social/icon-microsoft.png',
                            text: 'Microsoft',
                          ),
                          OutlineButtonSocial(
                            onPressed: () {  },
                            icon: 'assets/social/icon-google.png',
                            text: 'Google',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
