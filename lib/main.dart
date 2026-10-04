import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const DemoMoneyApp());
}

class DemoMoneyApp extends StatelessWidget {
  const DemoMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Demo Money',

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),

      home: const HomeScreen(),
    );
  }
}
