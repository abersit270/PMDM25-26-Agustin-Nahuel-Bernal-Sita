import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Ejercicio14 extends StatefulWidget {
  const Ejercicio14({super.key});

  @override
  State<Ejercicio14> createState() => _Ejercicio14State();
}

class _Ejercicio14State extends State<Ejercicio14> {
  final int _numeroSecreto = Random().nextInt(100) + 1;
  final GlobalKey<FormState> _llaveFormulario = GlobalKey<FormState>();
  final TextEditingController _controllador = TextEditingController();

  String _mensajePista = 'Adivina el número entre 1 y 100.';
  bool _acertado = false;

  String? _validarIntento(String? value) {
    if (_acertado) {
      return null;
    }
    final int? intento = int.tryParse(value ?? '');

    if (intento == null || intento < 1 || intento > 100) {
      return 'Ingresa un número válido (1-100).';
    }
    if (intento == _numeroSecreto) {
      setState(() {
        _acertado = true;
        _mensajePista =
            '¡Felicitaciones! Has adivinado el número: $_numeroSecreto.';
      });
      return '¡Correcto!';
    } else if (intento < _numeroSecreto) {
      setState(() {
        _mensajePista = 'El número secreto es **mayor** a $intento.';
      });
      return null;
    } else {
      setState(() {
        _mensajePista = 'El número secreto es **menor** a $intento.';
      });
      return null;
    }
  }

  void _manejarEnvio() {
    if (_llaveFormulario.currentState!.validate()) {
      _controllador.clear();
    }
  }

  @override
  void dispose() {
    _controllador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppDrawer()),
      appBar: AppBar(
        title: const Text('Adivina el Número'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _mensajePista,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: _acertado ? FontWeight.bold : FontWeight.normal,
                color: _acertado ? Colors.green : Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Form(
              key: _llaveFormulario,
              child: TextFormField(
                controller: _controllador,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingresa tu intento',
                  hintText: 'Número (1-100)',
                  border: OutlineInputBorder(),
                ),
                validator: _validarIntento,
                enabled: !_acertado,
                onFieldSubmitted: (value) {
                  if (!_acertado) {
                    _manejarEnvio();
                  }
                },
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _acertado ? null : _manejarEnvio,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(
                _acertado ? '¡ACERTADO!' : 'COMPROBAR',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
