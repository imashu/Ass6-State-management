import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => const Home(),
        '/Second': (BuildContext context) => Second(),
      },
      home: const Home(),
    );
  }
}
