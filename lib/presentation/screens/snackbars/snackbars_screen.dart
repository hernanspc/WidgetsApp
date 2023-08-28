import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarsScreen extends StatelessWidget {
  static const name = 'snackbars_screen';
  const SnackbarsScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Okey', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit in id dolor sit amet n diction n eget erat in ')
              ]);
            },
            child: const Text('Licencias usadas'),
          ),
          FilledButton.tonal(
            onPressed: () {
              openDialog(context);
            },
            child: const Text('Mostrar diálogo'),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
