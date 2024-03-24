import 'package:flutter/material.dart';

void main() => runApp(FilterScreen());

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

// ignore: must_be_immutable
class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox( height: 50),
            
            SizedBox(
                    width: 400,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                                              
                        Container(
                          color: Colors.amberAccent,
                          height: 80,
                          width: 120,
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Dia: '
                                )
                              ),
                              DropdownButtonExample()
                            ],
                          ),
                        ),
        
                        Container(
                          color: Colors.amberAccent,
                          height: 80,
                          width: 120,
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Mes: '
                                )
                              ),
                              DropdownButtonExample()
                            ],
                          ),
                        ),
        
        
                        Container(
                          color: Colors.amberAccent,
                          height: 80,
                          width: 120,
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Año: '
                                )
                              ),
                              DropdownButtonExample()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            
            const SizedBox( height: 15),

            SizedBox(
                  width: 200,
                  height: 70,
                  child: Container(
                margin: const EdgeInsets.all(15),
                width:  MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('FILTRAR'),
                ),
              ),
                ),

            const SizedBox( height: 15),
            
            SizedBox(
                  width: 400,
                  height: 650,
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
                          onPressed: () {}, 
                          child: Text('ATRAS'),
                        ) 
                      )
                ),
          ],
        ),
      ),
    );
  }

}


class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}