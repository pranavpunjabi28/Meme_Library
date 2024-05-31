import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Views/HomeView.dart';
import 'themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.lightScheme().toColorScheme()),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.darkScheme().toColorScheme()),
      themeMode: ThemeMode.dark,
      home: const Homeview(),
    );
  }
}
