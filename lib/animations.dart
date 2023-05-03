import 'package:desafio_app_masterclass/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorScheme.tertiary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Animações,',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: colorScheme.secondary),
                ),
                Text('Flutterando Masterclass',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: colorScheme.secondary)),
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
      ),
      body: Container(
        color: colorScheme.tertiary,
      ),
    );
  }
}
