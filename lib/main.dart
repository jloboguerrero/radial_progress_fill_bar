import 'package:circle_fill/src/pages/graficas_circulares_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circle fill App',
      home: GraficasCircularPage(),
    );
  }
}
