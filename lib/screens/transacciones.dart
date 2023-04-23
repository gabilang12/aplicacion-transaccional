// ignore_for_file: constant_identifier_names, library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pagina_inicio.dart';

class PaginaTransacciones extends StatefulWidget {
  const PaginaTransacciones({super.key});

  @override
  State<PaginaTransacciones> createState() => _PaginaTransaccionesState();
}

class _PaginaTransaccionesState extends State<PaginaTransacciones> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transacciones'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Seleccione su cuenta:'),),
          const Center(child: DropdownButtonCuentas(),),
          const SizedBox(height: 10),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Valor a transferir',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          const SizedBox(height: 20),
          const Center(child: Text('Seleccione el Banco:'),),
          const Center(child: DropdownButtonBancos(),),
          const SizedBox(height: 10),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Ingrese el numero del producto:',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 180),
              Checkbox(
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    if (_isChecked1 = true) {
                      _isChecked2 = false;
                      _isChecked1 = value!;
                    }
                    else{
                      _isChecked2 = true;
                      _isChecked1 = value!;
                    }
                  });
                },
              ),
              const Text('Ahorros'),
              Checkbox(
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    if (_isChecked2 = true) {
                      _isChecked1 = false;
                      _isChecked2 = value!;
                    }
                    else{
                      _isChecked1 = true;
                      _isChecked2 = value!;
                    }
                  });
                },
              ),
              const Text('Corriente'),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
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
                      title: const Text('Transferencia'),
                      content: const Text('Transferencia realizada con éxito'),
                      actions: [
                        TextButton(
                          child: const Text('Aceptar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'Transferir Dinero',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); //ir
                Navigator.push( //volver
                  context, 
                  MaterialPageRoute(builder: (_) => const PaginaInicio())
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: const Text(
                'Cancelar',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ] 
      ),
    );
  }
}

const List<String> list_cuentas = <String>['Cuenta 1', 'Cuenta 2', 'Cuenta 3'];
const List<String> list_bancos = <String>['Banco 1', 'Banco 2', 'Banco 3'];

class DropdownButtonCuentas extends StatefulWidget {
  const DropdownButtonCuentas({super.key});

  @override
  State<DropdownButtonCuentas> createState() => _DropdownButtonCuentasState();
}

class _DropdownButtonCuentasState extends State<DropdownButtonCuentas> {
  String dropdownValue = list_cuentas.first;

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
      items: list_cuentas.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButtonBancos extends StatefulWidget {
  const DropdownButtonBancos({super.key});

  @override
  State<DropdownButtonBancos> createState() => _DropdownButtonBancosState();
}

class _DropdownButtonBancosState extends State<DropdownButtonBancos> {
  String dropdownValue = list_bancos.first;

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
      items: list_bancos.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}