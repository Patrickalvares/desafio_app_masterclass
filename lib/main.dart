import 'package:desafio_app_masterclass/components/customCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(0xFF055AA3),
              secondary: const Color(0xFFEDF4F8),
              onSurface: const Color(0xFF51565A),
              background: const Color(0xFF172026),
            ),
      ),
      home: Scaffold(
          backgroundColor: const Color(0xFF121517),
          body: ListView(children: [
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
                                    color: const Color(0xFFEDF4F8))),
                            Text('Flutterando Masterclass',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFFEDF4F8))),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 26.55),
                      child: SizedBox(
                        width: 21.45,
                        height: 24,
                        child: Image.asset(
                          'lib/assets/awesome-moon.png',
                          color: const Color(0xFFEDF4F8),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomCard(
                  title: 'Animações',
                  imagePath: 'lib/assets/awesome-running.png',
                  description:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                  exerciseCount: 4,
                ),
                CustomCard(
                  title: 'Leitura de Mockup',
                  imagePath: 'lib/assets/Icon awesome-glasses.png',
                  description:
                      'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                  exerciseCount: 2,
                ),
                CustomCard(
                  title: 'Playground',
                  imagePath: 'lib/assets/Icon material-toys.png',
                  description: 'Ambiente destinado a testes e estudos em geral',
                  exerciseCount: 3,
                ),
              ],
            ),
          ])),
    );
  }
}
