// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'pagina_inicio.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  State<IniciarSesion> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
                'Aplicación Transaccional',
                style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          const SizedBox(height: 40,),
          const Center(
            child: Text(
                'USUARIO',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.person),
                labelText: 'Nombre de Usuario',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          const SizedBox(height: 30,),
          const Center(
            child: Text(
                'CONTRASEÑA',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.password),
                labelText: 'Contraseña',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); //ir
              Navigator.push( //volver
                context, 
                MaterialPageRoute(builder: (_) => const PaginaInicio()) //funcion flecha = hacer una cosa, una sola función
              );
            },
            child: const Text(
              'Iniciar sesión', 
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
          // const Text('CONTRASEÑA'),
          // Row(
          //   children: [
          //     TextFormField(),
          //     const Icon(Icons.password)
          //   ]
          // )
        //],
      ),
    );
  }
}