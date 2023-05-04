import 'package:desafio_app_masterclass/components/customCard.dart';
import 'package:desafio_app_masterclass/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'about.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.tertiary,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 4),
                        child: SizedBox(
                          child: Image.asset('lib/assets/logo.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Atividades',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                          Text('Flutterando Masterclass',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      themeNotifier.toggleTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 26.55),
                      child: SizedBox(
                        width: 21.45,
                        height: 24,
                        child: Image.asset(
                          'lib/assets/awesome-moon.png',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomCard(
                title: 'Animações',
                imagePath: 'lib/assets/awesome-running.png',
                description:
                    'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                exerciseCount: 4,
              ),
              const CustomCard(
                title: 'Leitura de Mockup',
                imagePath: 'lib/assets/Icon awesome-glasses.png',
                description:
                    'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                exerciseCount: 2,
              ),
              const CustomCard(
                title: 'Playground',
                imagePath: 'lib/assets/Icon material-toys.png',
                description: 'Ambiente destinado a testes e estudos em geral',
                exerciseCount: 3,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: colorScheme.tertiary,
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(
                        'lib/assets/Icon feather-target@2x.png',
                        color: colorScheme.secondary,
                      ),
                    ),
                    Text(
                      'Atividades',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xFF51565A),
                width: 1,
                height: 45,
              ),
              TextButton(
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(10.0)),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(
                        'lib/assets/awesome-github@2x.png',
                        color: colorScheme.secondary,
                      ),
                    ),
                    Text(
                      'Repositórios',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xFF51565A),
                width: 1,
                height: 45,
              ),
              TextButton(
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(10.0)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutTheDev()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Icon(
                        Icons.person,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                    ),
                    Text(
                      'Sobre o dev',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
