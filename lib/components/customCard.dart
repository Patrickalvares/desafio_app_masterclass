import 'package:desafio_app_masterclass/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final int exerciseCount;

  const CustomCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.description,
    required this.exerciseCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 13, top: 8, bottom: 8),
      child: Container(
        width: 400,
        height: 220,
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: BorderRadius.circular(30),
        ),
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
                          color: colorScheme.primary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          imagePath,
                          color: colorScheme.background,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text(title,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.secondary)),
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
                                color: colorScheme.onSurface, fontSize: 12),
                          ),
                        ),
                        Text(exerciseCount.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.secondary)),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                description,
                style: GoogleFonts.montserrat(
                    color: colorScheme.onSurface, fontSize: 14),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 21.5, right: 14, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            'lib/assets/awesome-github.png',
                            color: colorScheme.secondary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.36),
                          child: Text(
                            'Acessar código fonte',
                            style: GoogleFonts.montserrat(
                                color: colorScheme.secondary, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimationScreen()));
                      },
                      child: Container(
                        height: 34.5,
                        width: 119,
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          borderRadius: BorderRadius.circular(48),
                        ),
                        child: Center(
                          child: Text('Ver mais',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
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
