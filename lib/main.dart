import 'package:flutter/material.dart';
import 'package:seccion1_retroalimentacion/config/theme/app_theme.dart';
import 'package:seccion1_retroalimentacion/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo sección 1',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const HomeScreen()
    );
  }
}