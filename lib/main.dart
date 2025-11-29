import 'package:flutter/material.dart';
import 'login_page.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyPosApp());
}

class MyPosApp extends StatelessWidget {
  const MyPosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: "/splash",
  routes: {
    "/splash": (_) => const SplashScreen(),
    "/home": (_) => const LoginPage(),
  },
);

  }
}
