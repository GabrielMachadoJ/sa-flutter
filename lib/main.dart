import 'package:flutter/material.dart';
import 'package:sa/components/client_register.dart';
import 'package:sa/components/default.dart';
import 'package:sa/components/home.dart';
import 'package:sa/components/login.dart';
import 'package:sa/components/register.dart';
import 'package:sa/components/room_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Default(),
        '/home': (context) => const Register(),
        '/login': (context) => const Login(),
        '/quarto': (context) => const RoomRegister(),
        '/cliente': (context) => const ClienteRegister(),
      },
    );
  }
}
