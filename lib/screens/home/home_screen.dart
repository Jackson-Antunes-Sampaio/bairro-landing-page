import 'package:bairro_landing_page/components/custom_app_bar.dart';
import 'package:bairro_landing_page/components/title_text.dart';
import 'package:bairro_landing_page/screens/home/widget_main_home.dart';
import 'package:flutter/material.dart';

import '../termos/bottom.dart';
import 'custom_wrap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(
              children: [
                const WidgetMainHome(),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const TitleText(text: 'bairro'),
                    Container(
                      height: 5,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomWrap(
                  title: "Principais funcionalidades do Bairro:",
                  subTitle: '''
Patrulhas sob demanda: em caso de emergência, você pode solicitar patrulhas imediatas. Nossos patrulheiros estarão prontos para agir em questão de minutos.

Monitoramento em tempo real: o Bairro permite que você acompanhe a atividade em sua rua e bairro, para que você possa ficar informado sobre o que está acontecendo ao seu redor.

Alertas personalizados: defina as áreas que deseja monitorar e receba alertas instantâneos sobre atividades suspeitas, como arrombamentos, assaltos e outras atividades criminosas.

Comunidade engajada: o Bairro conecta você com uma comunidade engajada na segurança local. Compartilhe informações, crie grupos de patrulha e aumente a segurança em sua vizinhança.

Suporte 24/7: nossa equipe de suporte está sempre disponível para ajudar com quaisquer questões relacionadas à segurança.
                    ''',
                ),
                const CustomWrap(
                  invert: true,
                  title: 'Mais tranquilidade',
                  subTitle:
                      'Com o bairro, você pode viver mais tranquilo sabendo que está protegido. Baixe agora mesmo e junte-se a uma comunidade mais segura.',
                ),
                const ButtonPage()

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OutlineButtonSocial extends StatelessWidget {
  const OutlineButtonSocial({Key? key, required this.onPressed, required this.icon, required this.text}) : super(key: key);

  final VoidCallback onPressed;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      // style: OutlinedButton.styleFrom(
      //     maximumSize: const Size(196, 34),
      //     minimumSize: const Size(196, 34)
      // ),
      icon: Image.asset(icon),
      onPressed: onPressed,
      label: Text(text, style: const TextStyle(fontSize: 10, color: Colors.black),),
    );
  }
}
