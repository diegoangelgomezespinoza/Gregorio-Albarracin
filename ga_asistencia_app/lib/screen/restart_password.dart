import 'package:flutter/material.dart';

class RestarPassword extends StatelessWidget {
  const RestarPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(

        ),
        centerTitle: true,
        title: const Text('Recuperar Contraseña')
      ),
      body: 
      Center(
        child: Container(
          height: 150,
          width: 500,
          margin: const EdgeInsets.only(top:10, left: 0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Ingrese su correo: '
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField()
              ),
              Container(
                margin: const EdgeInsets.all(15),
                width:  MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('ENVIAR'),
                ),
              ),
            ]
          )
        ),
      )
    );
  }
}