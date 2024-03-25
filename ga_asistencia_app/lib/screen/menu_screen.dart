import 'package:flutter/material.dart';
import 'package:ga_asistencia_app/screen/login_screen.dart';
import 'package:ga_asistencia_app/screen/register_screen.dart';
import 'package:ga_asistencia_app/screen/view_screen.dart';

void main() => runApp(const MenuScreen());

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [


            const SizedBox( height: 60),


            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 70,
              width: 400,
              decoration: const BoxDecoration(
              color: Colors.cyanAccent
              ),
              child: const Text(
                "Bienvenido Usuario", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45, 
                  color: Colors.black
                ),
                ), 
            ),


            const SizedBox( height: 30),


            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 300,
              width: 250,
              child: Image.asset('assets/insignia.png')
            ),


          const SizedBox( height: 30),


          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 150,
              width: 400,              
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                }, 
                child: const Text('REGISTRAR ASISTENCIA'),
                
              )
            ),


          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 150,
              width: 400,            
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewScreen()));
                }, 
                child: const Text('VISUALIZAR ASISTENCIA'),
                
              ) 
            ),
          const SizedBox( height: 30),


          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 70,
              width: 200,              
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                }, 
                child: const Text('CERRAR SESION'),
                
              ) 
            ),
        ],
      ),
      )
      
    );
  }
}