// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/iniciar_sesion.dart';
import 'package:flutter_application_1/screens/productos.dart';
import 'package:flutter_application_1/screens/saldos_movimientos.dart';
import 'package:flutter_application_1/screens/transacciones.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                  'Ver Saldos y Movimientos',
                  style: TextStyle(
                    fontSize: 25,
                  ),
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
                    MaterialPageRoute(builder: (_) => const PaginaTransacciones())
                  );
                },
                style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 169, 173, 175)),
                child: const Text(
                  'Transferir Dinero',
                  style: TextStyle(fontSize: 25),
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
                    MaterialPageRoute(builder: (_) => const PaginaProductos())
                  );
                },
                style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 169, 173, 175)),
                child: const Text(
                  'Productos',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 100), // Espacio vacío entre los botones y el botón de cerrar sesión
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //ir
                  Navigator.push( //volver
                    context, 
                    MaterialPageRoute(builder: (_) => const IniciarSesion())
                  );
                },
                child: const Text(
                  'Cerrar Sesión',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        )
    );
  }
}