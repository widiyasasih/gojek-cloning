import 'package:flutter/material.dart';
import 'package:gojek_cloning/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Smaday',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
