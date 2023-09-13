import 'package:flutter/material.dart';
import 'package:my_app/whatsapp_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: "WhatsApp",
      theme: theme.copyWith(
          primaryColor: const Color(0xff075E54),
          colorScheme: theme.colorScheme.copyWith(
            secondary: const Color(0xff25D366),
          )),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppHome(),
    );
  }
}
