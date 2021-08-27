import 'package:flutter/material.dart';
import 'package:flutter_animation/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter animation',
      routes: Routes.routes,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
