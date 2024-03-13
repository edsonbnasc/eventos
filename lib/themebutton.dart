import 'package:flutter/material.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Tema'),
      value: isDarkTheme,
      onChanged: (newValue) {
        setState(() {
          isDarkTheme = newValue;
          if (isDarkTheme) {
            ThemeData(
              useMaterial3: true,
              brightness: Brightness.dark,
              textTheme: const TextTheme(
                titleMedium: TextStyle(color: Colors.red),
                titleSmall: TextStyle(color: Colors.purple),
              ),
            );
          } else {
            ThemeData(
              useMaterial3: true,
              brightness: Brightness.light,
              textTheme: const TextTheme(
                titleMedium: TextStyle(color: Colors.red),
                titleSmall: TextStyle(color: Colors.purple),
              ),
            );
          }
        });
      },
    );
  }
}