import 'package:desafio_app_masterclass/components/customCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final void Function() onToggleTheme;

  const HomePage({required this.onToggleTheme, Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    onTap: widget.onToggleTheme,
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
                  )
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
    );
  }
}
