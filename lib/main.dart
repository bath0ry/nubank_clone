import 'package:flutter/material.dart';
import 'package:nubank_clone/home/page/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Clone',
      home: SafeArea(child: const HomePage()),
    );
  }
}
