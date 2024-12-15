import 'package:flutter/material.dart';
import 'package:joefloxy/utils/routes.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      initialRoute: Routes.splashPage,
      routes: Routes.pages,
    );
  }
}
