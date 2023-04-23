import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pagina_inicio.dart';

class PaginaSaldosMovimientos extends StatelessWidget {
  const PaginaSaldosMovimientos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver Saldos y Movimientos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Seleccione su cuenta:'),),
          const Center(child: DropdownButtonExample(),),
          const SizedBox(height: 20),
          const Center(child: Text('Movimientos:'),),
          SizedBox(
            height: 200, // Establece la altura máxima de la tabla
            width: 350,
            child: SingleChildScrollView(
                child: Table(// Establece el estilo de la tabla
                  border: TableBorder.all(),
                  children: const [
                    TableRow(
                      children: [
                        TableCell( // Celda 1, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 1')),
                          ),
                        ),
                        TableCell( // Celda 1, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell( // Celda 2, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 2')),
                          ),
                        ),
                        TableCell(// Celda 2, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell( // Celda 3, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 3')),
                          ),
                        ),
                        TableCell( // Celda 3, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [ 
                        TableCell(// Celda 4, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 4')),
                          ),
                        ),
                        TableCell(// Celda 4, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(// Celda 5, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 5')),
                          ),
                        ),
                        TableCell(// Celda 5, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(// Celda 6, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 6')),
                          ),
                        ),
                        TableCell(// Celda 6, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(// Celda 7, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 7')),
                          ),
                        ),
                        TableCell(// Celda 7, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(// Celda 8, columna 1
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('movimiento 8')),
                          ),
                        ),
                        TableCell(// Celda 8, columna 2
                          child: SizedBox(
                            height: 50,
                            child: Center(child: Text('###')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ),
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
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
        ] 
      ),
    );
  }
}


const List<String> list = <String>['Cuenta 1', 'Cuenta 2', 'Cuenta 3'];

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
