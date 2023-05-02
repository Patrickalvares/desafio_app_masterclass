import 'package:desafio_app_masterclass/components/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(onToggleTheme: () {}));
}

class MyApp extends StatefulWidget {
  final void Function() onToggleTheme;

  const MyApp({required this.onToggleTheme, Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
    widget.onToggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF055AA3),
          secondary: Color(0xFF172026),
          tertiary: Color(0xFFD6DFE4),
          onSurface: Color(0xFF51565A),
          background: Color(0xFFEDF4F8),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF055AA3),
          secondary: Color(0xFFEDF4F8),
          tertiary: Color(0xFF121517),
          onSurface: Color(0xFF51565A),
          background: Color(0xFF172026),
        ),
      ),
      themeMode: _isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(onToggleTheme: _toggleTheme),
    );
  }
}
