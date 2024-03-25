import 'package:flutter/material.dart';
import 'package:ga_asistencia_app/screen/menu_screen.dart';

void main() => runApp(const ViewScreen());

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox( height: 50),
            SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('PRIMARIA')
                        )
                      ),

                      const SizedBox( width: 15),

                      Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('SECUNDARIA')
                        )
                      )
                    ],
                  ),
                ),
            const SizedBox( height: 20),
            SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 110,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('NOMBRE')
                        )
                      ),

                      //const SizedBox( width: 5),

                      Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 90,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('DNI')
                        )
                      ),

                      //const SizedBox( width: 15),
                      
                      Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('GRADO Y SECCION')
                        )
                      )
                    ],
                  ),
                ),

            const SizedBox( height: 20),
            
            SizedBox(
                  width: 400,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      
                      Container(
                        color: Colors.amberAccent,
                        height: 80,
                        width: 280,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Ingrese: '
                              )
                            ),
                            TextFormField()
                          ],
                        ),
                      ),

                      Container(
                        color: Colors.amberAccent,
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent)),
                          onPressed: () {}, 
                          child: const Text('Buscar'),
                        )
                      )
                    ],
                  ),
                ),
            
            const SizedBox( height: 20),
            
            SizedBox(
                  width: 400,
                  height: 600,
                  child: Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 180
                      ),
                ),

            const SizedBox( height: 20),

            SizedBox(
                  width: 200,
                  height: 70,
                  child: Container(
                        color: Colors.amberAccent,
                        height: 100,
                        width: 180,
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuScreen()));
                          }, 
                          child: Text('ATRAS'),
                        ) 
                      )
                )
          ],
        ),
      ),
    );
  }
}