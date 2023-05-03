import 'package:desafio_app_masterclass/components/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
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
      themeMode: themeNotifier.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(),
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme => _isDarkTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
