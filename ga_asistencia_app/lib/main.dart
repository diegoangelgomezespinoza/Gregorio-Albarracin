import 'package:flutter/material.dart';
import 'package:ga_asistencia_app/screen/restart_password.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GA App',
      debugShowCheckedModeBanner: false,
      home: const RestarPassword()
    );
  }
}