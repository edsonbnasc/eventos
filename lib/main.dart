import 'dart:js';

import 'package:flutter/material.dart';
import 'package:teste/telainicial.dart';
import 'package:teste/telalogin.dart';
import 'package:teste/themebutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        "/telalogin":(context)=> const TelaLogin(),
      },
      theme: ThemeData(
        useMaterial3: true,
               
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.red),
          titleSmall: TextStyle(color: Colors.purple)
        ),
      ),
      home: const TelaInicial(),
      
      
    );
  }
  
  
}


