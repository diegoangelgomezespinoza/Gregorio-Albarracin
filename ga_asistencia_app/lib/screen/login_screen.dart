// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: LoginScreen()));

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'REGISTRO DE ASISTENCIA',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: Image.asset('assets/insignia.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Inicio de Sesión',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              Text(
                'Usuario',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left
              ),
              TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Ingrese su usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Contraseña',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left
              ),
              TextField(
                textAlign: TextAlign.left,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Iniciar Sesión'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Olvidé mi contraseña',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}