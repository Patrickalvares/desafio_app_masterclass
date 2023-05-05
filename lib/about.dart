import 'package:desafio_app_masterclass/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

class AboutTheDev extends StatefulWidget {
  const AboutTheDev({Key? key}) : super(key: key);

  @override
  State<AboutTheDev> createState() => _AboutTheDevState();
}

class _AboutTheDevState extends State<AboutTheDev> {
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
              Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 320,
                  width: 401,
                  decoration: BoxDecoration(
                      color: colorScheme.background,
                      borderRadius: BorderRadius.circular(26)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(color: Colors.black, width: 4)),
                          height: 116,
                          width: 116,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset('lib/assets/dev.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text(
                        'Patrick Michel Alvares',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 23, left: 23, top: 13, bottom: 45),
                        child: Text(
                          'Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 13.5, left: 13.5, bottom: 26),
                            child: SizedBox(
                              height: 23,
                              width: 23,
                              child: Image.asset(
                                'lib/assets/Icon ionic-logo-whatsapp.png',
                                color: colorScheme.secondary,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 13.5, left: 13.5, bottom: 26),
                            child: SizedBox(
                              height: 23,
                              width: 23,
                              child: Image.asset(
                                'lib/assets/Icon awesome-github-alt.png',
                                color: colorScheme.secondary,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 13.5, left: 13.5, bottom: 26),
                            child: SizedBox(
                              height: 23,
                              width: 23,
                              child: Image.asset(
                                'lib/assets/Icon awesome-instagram.png',
                                color: colorScheme.secondary,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 13.5, left: 13.5, bottom: 26),
                              child: SizedBox(
                                height: 23,
                                width: 23,
                                child: Image.asset(
                                  'lib/assets/Icon awesome-facebook-f.png',
                                  color: colorScheme.secondary,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'Tecnologias Favoritas',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          SizedBox(
            height: 111,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FlutterBanner(),
                FlutterBanner(),
                FlutterBanner(),
                FlutterBanner(),
                FlutterBanner(),
                FlutterBanner(),
                FlutterBanner(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
            ),
            child: Text(
              'Habilidades e Competências',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Container(
              height: 189,
              width: 401,
              decoration: BoxDecoration(
                color: colorScheme.background,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      buildSkillRow(context, 'Dart/Flutter', 0.5),
                      buildSkillRow(context, 'JavaScript', 0.15),
                      buildSkillRow(context, 'C', 0.6),
                      buildSkillRow(context, 'Python', 0.01),
                      buildSkillRow(context, 'HTML/CSS', 0.25),
                    ],
                  )
                ],
              ),
            ),
          )
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
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomePage1(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 500),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Icon(
                          Icons.radar_rounded,
                          color: colorScheme.secondary,
                          size: 30,
                        )),
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
                onPressed: () {},
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

class FlutterBanner extends StatelessWidget {
  const FlutterBanner({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 110,
        width: 94,
        decoration: BoxDecoration(
            color: colorScheme.background,
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 48,
                width: 38,
                child: Image.asset(
                  'lib/assets/Icon simple-flutter.png',
                  color: colorScheme.secondary,
                )),
            Text(
              'Flutter',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildSkillRow(BuildContext context, String skill, double progress) {
  final colorScheme = Theme.of(context).colorScheme;

  return Padding(
    padding: const EdgeInsets.only(top: 17, left: 14, right: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          skill,
          style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface),
        ),
        buildProgressBar(context, progress),
      ],
    ),
  );
}

Widget buildProgressBar(BuildContext context, double progress) {
  final colorScheme = Theme.of(context).colorScheme;

  return Container(
    decoration: BoxDecoration(
      color: colorScheme.background,
      borderRadius: BorderRadius.circular(26),
    ),
    height: 9,
    width: 194,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: LinearProgressIndicator(
        value: progress,
        color: colorScheme.primary,
        backgroundColor: colorScheme.tertiary,
      ),
    ),
  );
}
