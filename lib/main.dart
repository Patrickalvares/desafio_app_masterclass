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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: const Color(0xFF121517),
          body: Column(
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 13, top: 8, bottom: 8),
                child: Container(
                    width: 400,
                    height: 220,
                    decoration: BoxDecoration(
                        color: const Color(0xFF172026),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 43,
                                    width: 43,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Image.asset(
                                        'lib/assets/awesome-running.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Text('Animações',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFFEDF4F8))),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 17),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Exercicios:',
                                        style: GoogleFonts.montserrat(
                                            color: const Color(0xFF51565A),
                                            fontSize: 12),
                                      ),
                                    ),
                                    Text('4',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFFEDF4F8))),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFF51565A), fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 21.5, right: 14, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          'lib/assets/awesome-github.png'),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 4.36),
                                      child: Text(
                                        'Acessar código fonte',
                                        style: GoogleFonts.montserrat(
                                            color: const Color(0xFFEDF4F8),
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 34.5,
                                  width: 119,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF055AA3),
                                    borderRadius: BorderRadius.circular(48),
                                  ),
                                  child: Center(
                                    child: Text('Ver mais',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFFEDF4F8))),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
