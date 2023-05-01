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
          backgroundColor: Color.fromARGB(1, 214, 223, 228),
          body: Column(
            children: [
              const SizedBox(height: 48),
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
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      Text('Flutterando Masterclass',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
