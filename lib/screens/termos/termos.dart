import 'package:bairro_landing_page/components/title_text.dart';
import 'package:bairro_landing_page/screens/termos/bottom.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';

class TermosScreen extends StatefulWidget {
  const TermosScreen({Key? key}) : super(key: key);

  @override
  State<TermosScreen> createState() => _TermosScreenState();
}

class _TermosScreenState extends State<TermosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        const CustomAppBar(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              TitleText(text: 'Política Privacidade', fontSize: 30),
              SubText(
                text:
                    '''A sua privacidade é importante para nós. É política do bairro respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar no site bairro, e outros sites que possuímos e operamos.

Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado.

Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis ​​para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.

Não compartilhamos informações de identificação pessoal publicamente ou com terceiros, exceto quando exigido por lei.

O nosso site pode ter links para sites externos que não são operados por nós. Esteja ciente de que não temos controle sobre o conteúdo e práticas desses sites e não podemos aceitar responsabilidade por suas respectivas políticas de privacidade.

Você é livre para recusar a nossa solicitação de informações pessoais, entendendo que talvez não possamos fornecer alguns dos serviços desejados.

O uso continuado de nosso site será considerado como aceitação de nossas práticas em torno de privacidade e informações pessoais. Se você tiver alguma dúvida sobre como lidamos com dados do usuário e informações pessoais, entre em contacto connosco.

• O serviço Google AdSense que usamos para veicular publicidade usa um cookie DoubleClick para veicular anúncios mais relevantes em toda a Web e limitar o número de vezes que um determinado anúncio é exibido para você.
• Para mais informações sobre o Google AdSense, consulte as FAQs oficiais sobre privacidade do Google AdSense.
• Utilizamos anúncios para compensar os custos de funcionamento deste site e fornecer financiamento para futuros desenvolvimentos. Os cookies de publicidade comportamental usados ​​por este site foram projetados para garantir que você forneça os anúncios mais relevantes sempre que possível, rastreando anonimamente seus interesses e apresentando coisas semelhantes que possam ser do seu interesse.
• Vários parceiros anunciam em nosso nome e os cookies de rastreamento de afiliados simplesmente nos permitem ver se nossos clientes acessaram o site através de um dos sites de nossos parceiros, para que possamos creditá-los adequadamente e, quando aplicável, permitir que nossos parceiros afiliados ofereçam qualquer promoção que pode fornecê-lo para fazer uma compra.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: 'Compromisso do Usuário', fontSize: 30),
              SubText(
                text:
                    '''O usuário se compromete a fazer uso adequado dos conteúdos e da informação que o bairro oferece no site e com caráter enunciativo, mas não limitativo:

A) Não se envolver em atividades que sejam ilegais ou contrárias à boa fé a à ordem pública;
B) Não difundir propaganda ou conteúdo de natureza racista, xenofóbica, betano ou azar, qualquer tipo de pornografia ilegal, de apologia ao terrorismo ou contra os direitos humanos;
C) Não causar danos aos sistemas físicos (hardwares) e lógicos (softwares) do bairro, de seus fornecedores ou terceiros, para introduzir ou disseminar vírus informáticos ou quaisquer outros sistemas de hardware ou software que sejam capazes de causar danos anteriormente mencionados.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: 'Mais informações', fontSize: 30),
              SubText(
                text:
                    '''Esperemos que esteja esclarecido e, como mencionado anteriormente, se houver algo que você não tem certeza se precisa ou não, geralmente é mais seguro deixar os cookies ativados, caso interaja com um dos recursos que você usa em nosso site.

Esta política é efetiva a partir de 15 February 2023 20:35''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '1. Termos', fontSize: 30),
              SubText(
                text:
                    '''Ao acessar ao site bairro, concorda em cumprir estes termos de serviço, todas as leis e regulamentos aplicáveis ​​e concorda que é responsável pelo cumprimento de todas as leis locais aplicáveis. Se você não concordar com algum desses termos, está proibido de usar ou acessar este site. Os materiais contidos neste site são protegidos pelas leis de direitos autorais e marcas comerciais aplicáveis.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '2. Uso de Licença', fontSize: 30),
              SubText(
                text:
                    '''É concedida permissão para baixar temporariamente uma cópia dos materiais (informações ou software) no site bairro , apenas para visualização transitória pessoal e não comercial. Esta é a concessão de uma licença, não uma transferência de título e, sob esta licença, você não pode: 

• modificar ou copiar os materiais; 
• usar os materiais para qualquer finalidade comercial ou para exibição pública (comercial ou não comercial); 
• tentar descompilar ou fazer engenharia reversa de qualquer software contido no site bairro; 
• remover quaisquer direitos autorais ou outras notações de propriedade dos materiais; ou 
• transferir os materiais para outra pessoa ou 'espelhe' os materiais em qualquer outro servidor.
Esta licença será automaticamente rescindida se você violar alguma dessas restrições e poderá ser rescindida por bairro a qualquer momento. Ao encerrar a visualização desses materiais ou após o término desta licença, você deve apagar todos os materiais baixados em sua posse, seja em formato eletrónico ou impresso.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '3. Isenção de responsabilidade', fontSize: 30),
              SubText(
                text:
                    '''• Os materiais no site da bairro são fornecidos 'como estão'. bairro não oferece garantias, expressas ou implícitas, e, por este meio, isenta e nega todas as outras garantias, incluindo, sem limitação, garantias implícitas ou condições de comercialização, adequação a um fim específico ou não violação de propriedade intelectual ou outra violação de direitos.
• Além disso, o bairro não garante ou faz qualquer representação relativa à precisão, aos resultados prováveis ​​ou à confiabilidade do uso dos materiais em seu site ou de outra forma relacionado a esses materiais ou em sites vinculados a este site.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '4. Limitações', fontSize: 30),
              SubText(
                text:
                    '''Em nenhum caso o bairro ou seus fornecedores serão responsáveis ​​por quaisquer danos (incluindo, sem limitação, danos por perda de dados ou lucro ou devido a interrupção dos negócios) decorrentes do uso ou da incapacidade de usar os materiais em bairro, mesmo que bairro ou um representante autorizado da bairro tenha sido notificado oralmente ou por escrito da possibilidade de tais danos. Como algumas jurisdições não permitem limitações em garantias implícitas, ou limitações de responsabilidade por danos conseqüentes ou incidentais, essas limitações podem não se aplicar a você.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '5. Precisão dos materiais', fontSize: 30),
              SubText(
                text:
                    '''Os materiais exibidos no site da bairro podem incluir erros técnicos, tipográficos ou fotográficos. bairro não garante que qualquer material em seu site seja preciso, completo ou atual. bairro pode fazer alterações nos materiais contidos em seu site a qualquer momento, sem aviso prévio. No entanto, bairro não se compromete a atualizar os materiais.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: '6. Links', fontSize: 30),
              SubText(
                text:
                    '''O bairro não analisou todos os sites vinculados ao seu site e não é responsável pelo conteúdo de nenhum site vinculado. A inclusão de qualquer link não implica endosso por bairro do site. O uso de qualquer site vinculado é por conta e risco do usuário.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: 'Modificações', fontSize: 30),
              SubText(
                text:
                    '''O bairro pode revisar estes termos de serviço do site a qualquer momento, sem aviso prévio. Ao usar este site, você concorda em ficar vinculado à versão atual desses termos de serviço.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              TitleText(text: 'Lei aplicável', fontSize: 30),
              SubText(
                text:
                    '''Estes termos e condições são regidos e interpretados de acordo com as leis do bairro e você se submete irrevogavelmente à jurisdição exclusiva dos tribunais naquele estado ou localidade.''',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              ButtonPage()
            ],
          ),
        )),
      ]),
    );
  }
}
