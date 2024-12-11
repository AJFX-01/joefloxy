import 'package:flutter/material.dart';
import 'package:joefloxy/screens/splashscrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      title: "joe",
      theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}
