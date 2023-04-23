// ignore_for_file: library_private_types_in_public_api, camel_case_types, prefer_final_fields, prefer_const_constructors, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pagina_inicio.dart';
import 'package:flutter_application_1/screens/saldos_movimientos.dart';

class PaginaProductos extends StatelessWidget {
  const PaginaProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const PaginaSaldosMovimientos())
                  );
                },
                style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 169, 173, 175)),
                child: const Text(
                  'Mis Productos',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          const SizedBox(height: 20),
          const Center(child: Text('Seleccione el producto de su interés:'),),
          const Center(child: DropdownButtonExample(),),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Valor inicial a invertir en el producto',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          const SizedBox(height: 20),
          Center(child: Row(
            children: <Widget>[
              const SizedBox(width: 160),
              const Center(child: Text('Tasa: ###%'),),
              const SizedBox(width: 30),
              Center(child: ElevatedButton(//este deberia guardar la información que seleccione la persona
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const PaginaInicio())
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Nuevo Producto'),
                        content: Text('Haz adquirido un nuevo producto'),
                        actions: [
                          TextButton(
                            child: Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text(
                  'Adquirir',
                  style: TextStyle(fontSize: 15)
                )
              )),
            ],
          )),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); //ir
                Navigator.push( //volver
                  context, 
                  MaterialPageRoute(builder: (_) => const PaginaInicio())
                );
              },
              child: const Text(
                  'Regresar',
                  style: TextStyle(fontSize: 15)
                ),
            ),
          ),
        ] 
      ),
    );
  }
}

const List<String> list = <String>['Producto 1', 'Producto 2', 'Producto 3'];

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
      elevation: 16,
      style: const TextStyle(color: Colors.blue),
      underline: Container(
        height: 2,
        color: Colors.blue,
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
