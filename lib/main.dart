import 'package:flutter/material.dart';
import 'package:space_x/notifier.dart';
import 'package:space_x/pages/home.dart';
import 'package:space_x/widget_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotofier,
      builder: (context, isDark, child) {
        return MaterialApp(
          home: const WidgetTree(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              brightness: isDark ? Brightness.dark : Brightness.light),
        );
      },
    );
  }
}
