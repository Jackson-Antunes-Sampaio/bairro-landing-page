import 'package:bairro_landing_page/screens/home/home_screen.dart';
import 'package:bairro_landing_page/screens/termos/termos.dart';
import 'package:bairro_landing_page/setup.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.g.dart';

void main() {
  //setUrlStrategy(PathUrlStrategy());
  configureUrl();
  runApp(const MyApp());
}

// Claro, aqui está uma possível copy para a sua landing page do aplicativo "Bairo - Segurança e Patrulha":
//
// Bairo - Segurança e Patrulha: a proteção que você merece
//
// O Bairo é o aplicativo de segurança que você precisa ter em seu celular. Com ele, você pode solicitar patrulhas em tempo real, monitorar a sua rua e a vizinhança, além de receber alertas sobre atividades suspeitas.
//
// Aqui estão algumas das principais funcionalidades do Bairo:
//
// Patrulhas sob demanda: em caso de emergência, você pode solicitar patrulhas imediatas. Nossos patrulheiros estarão prontos para agir em questão de minutos.
//
// Monitoramento em tempo real: o Bairo permite que você acompanhe a atividade em sua rua e bairro, para que você possa ficar informado sobre o que está acontecendo ao seu redor.
//
// Alertas personalizados: defina as áreas que deseja monitorar e receba alertas instantâneos sobre atividades suspeitas, como arrombamentos, assaltos e outras atividades criminosas.
//
// Comunidade engajada: o Bairo conecta você com uma comunidade engajada na segurança local. Compartilhe informações, crie grupos de patrulha e aumente a segurança em sua vizinhança.
//
// Suporte 24/7: nossa equipe de suporte está sempre disponível para ajudar com quaisquer questões relacionadas à segurança.
//
// Com o Bairo, você pode viver mais tranquilo sabendo que está protegido. Baixe agora mesmo e junte-se a uma comunidade mais segura.
//
// Claro, aqui está uma possível headline, subheadline e call-to-action para a sua landing page do aplicativo "Bairo - Segurança e Patrulha":
//
// Headline: Proteja-se com o Bairo - o aplicativo de segurança que você precisa ter.
//
// Subheadline: Tenha acesso a patrulhas sob demanda, monitoramento em tempo real e alertas personalizados. Junte-se a uma comunidade engajada na segurança local e fique mais seguro com o Bairo.
//
// CTA: Baixe agora mesmo e tenha a proteção que você merece.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData(
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      useMaterial3: true,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
    return MaterialApp(
      title: 'bairro',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.sourceSansProTextTheme(baseTheme.textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/termos': (context) => const TermosScreen()
      },
    );
  }
}
