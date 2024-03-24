// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: RegisterScreen()));

final List<String> listaNivel = ['Primaria', 'Secundaria'];
final List<String> listaGrado = ['Primero', 'Segundo', 'Tercero', 'Cuarto', 'Quinto'];
String? dropdownValue = 'Primaria';
String? dropdownValue1;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              TextButton(
                onPressed: () {},
                child: Text(
                  'Regresar',
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Primero "A" - Primaria',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              DropdownButtonFormField<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {},
                items: listaNivel.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              SizedBox(height: 20),

              DropdownButtonFormField<String>(
                value: dropdownValue1,
                onChanged: (String? newValue) {
                  // Acción cuando se selecciona un elemento de la lista
                  dropdownValue1 = newValue; // Actualiza el valor seleccionado
                },
                items: listaGrado.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  hintText: dropdownValue1 ?? 'Grado y Seccion',
                  //border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),
              DataTable(
                columns: <DataColumn>[
                  DataColumn(label: Text('DNI')),
                  DataColumn(label: Text('NOMBRE COMPLETO')),
                  DataColumn(label: Text('ASIS.')),
                ],
                rows: <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('DNI')),
                    DataCell(Text('Nombres')),
                    DataCell(Checkbox(value: false, onChanged: (newValue) {},)),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}