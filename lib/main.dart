import 'package:flutter/material.dart';

import 'generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerate,
      initialRoute: '/home',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}
