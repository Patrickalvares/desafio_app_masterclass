import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityBanner extends StatefulWidget {
  final String listIndex;
  const ActivityBanner({required this.listIndex, Key? key}) : super(key: key);

  @override
  State<ActivityBanner> createState() => _ActivityBannerState();
}

class _ActivityBannerState extends State<ActivityBanner> {
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(right: 11, left: 11, top: 5),
      child: Container(
        decoration: BoxDecoration(
            color: colorScheme.background,
            borderRadius: BorderRadius.circular(28)),
        height: 64,
        width: 405,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: colorScheme.primary),
                child: Center(
                  child: Text(
                    widget.listIndex,
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              Text(
                'Exercícios 01',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.secondary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
