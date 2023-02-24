import 'package:bairro_landing_page/components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final rota = ModalRoute.of(context)?.settings.name;
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Theme.of(context).colorScheme.outline, width: 0.5))),
      child: LayoutBuilder(builder: (context, constraint) {
        return Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoName(),
                    const Spacer(),
                    constraint.maxWidth <= 500
                        ? PopupMenuButton(
                            icon: const Icon(Icons.menu),
                            onSelected: (value){
                              if(value == 1){
                                Navigator.of(context).pushNamed('/');
                              }else if(value == 2){
                                Navigator.of(context).pushNamed('/termos');
                              } else{
                                onTapFale();
                              }
                            },
                            itemBuilder: (BuildContext context) {
                              return [
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: buttonHome(rota,menu: true),
                                ),
                                PopupMenuItem<int>(
                                  value: 2,
                                  child: buttonTermos(rota, menu: true),
                                ),
                                PopupMenuItem<int>(
                                  value: 3,
                                  child: buttonFale(menu: true),
                                ),
                              ];
                            },
                          )
                        : Row(
                            children: [
                              buttonHome(rota),
                              const SizedBox(
                                width: 10,
                              ),
                              buttonTermos(rota),
                              const SizedBox(
                                width: 10,
                              ),
                              buttonFale(),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget buttonFale({bool menu = false}) {
    const label = Text("FALE CONOSCO");
    if(menu){
      return label;
    }
    return ElevatedButton(
      onPressed: onTapFale,
      child: label,
    );
  }

  void onTapFale() async {
      const url =
          'https://api.whatsapp.com/send/?phone=5511992289586&text&type=phone_number&app_absent=0';
      if (!await launchUrlString(url)) {
        throw Exception('Could not launch $url');
      }
    }

  Widget buttonHome(String? rota, {bool menu = false}) {
    final label = Text(
      "Home",
      style: TextStyle(fontWeight: rota == '/' ? FontWeight.bold : null),
    );
    if(menu){
      return label;
    }
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/');
      },
      child: label,
    );
  }

  Widget buttonTermos(String? rota, {bool menu = false}) {
    final label = Text("Termos",
        style: TextStyle(
            fontWeight: rota == '/termos' ? FontWeight.bold : null));
    if(menu){
      return label;
    }

    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/termos');
      },
      child: label,
    );
  }
}

class LogoName extends StatelessWidget {
  const LogoName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageRenderer(
          alt: 'Asset Image',
          child: Image.asset(
            'assets/logo.png',
            width: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const TitleText(
          text: 'bairro',
        ),
      ],
    );
  }
}
