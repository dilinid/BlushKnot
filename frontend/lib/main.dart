import 'package:flutter/material.dart';
import './pages/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'BlushKnot',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const LaunchScreen(), 
    );
  }
}
