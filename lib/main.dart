import 'package:flutter/material.dart';
import 'package:eclubpy_test/navbar_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context) => const NavBar(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context)
          .copyWith(scaffoldBackgroundColor: const Color(0xFFF7F0ED)),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: _routes,
      initialRoute: '/',
    );
  }
}
