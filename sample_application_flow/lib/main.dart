import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0EA5E9)),
        useMaterial3: true,
        fontFamily: 'Inter', // Assuming Inter is available or fallback to default
      ),
      home: const LoginPage(),
    );
  }
}
