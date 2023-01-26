import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/dataDiri_provider.dart';
import 'package:flutter_application_1/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => dataDiriProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}