import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';
import 'package:gulera/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gulera',
      home: const MainPage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.green_500),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

