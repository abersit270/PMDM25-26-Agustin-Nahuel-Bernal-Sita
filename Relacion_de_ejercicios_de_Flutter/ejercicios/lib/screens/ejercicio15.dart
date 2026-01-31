import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio15 extends StatefulWidget {
  const Ejercicio15({super.key});

  @override
  State<Ejercicio15> createState() => _Ejercicio15State();
}

class _Ejercicio15State extends State<Ejercicio15> {
  final GlobalKey<FormState> _llaveFormulario = GlobalKey<FormState>();

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _ultimoNombreController = TextEditingController();
  final TextEditingController _codPostalController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final RegExp _nameRegex = RegExp(r"^[a-zA-Z\s]{2,}$");
  final RegExp _zipCodeRegex = RegExp(r"^\d{5}$");
  final RegExp _emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );

  void _submitForm() {
    if (_llaveFormulario.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Formulario Enviado y Validado.\n'
            'Nombre: ${_nombreController.text}\n'
            'Email: ${_emailController.text}',
            style: const TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 4),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Por favor, corrige los errores del formulario.',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _ultimoNombreController.dispose();
    _codPostalController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppDrawer()),
      appBar: AppBar(
        title: const Text('Registro Simple'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _llaveFormulario,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              // --- 1. Nombre ---
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'El nombre es obligatorio.';
                  }
                  if (!_nameRegex.hasMatch(value)) {
                    return 'Solo letras y espacios (mínimo 2 caracteres).';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // --- 2. Apellido ---
              TextFormField(
                controller: _ultimoNombreController,
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'El apellido es obligatorio.';
                  }
                  if (!_nameRegex.hasMatch(value)) {
                    return 'Solo letras y espacios (mínimo 2 caracteres).';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // --- 3. Código Postal ---
              TextFormField(
                controller: _codPostalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Código Postal',
                  hintText: 'Ej. 28001',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.local_post_office),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'El código postal es obligatorio.';
                  }
                  if (!_zipCodeRegex.hasMatch(value)) {
                    return 'Debe ser un código postal válido de 5 dígitos.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // --- 4. Email ---
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'ejemplo@dominio.com',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'El email es obligatorio.';
                  }
                  if (!_emailRegex.hasMatch(value)) {
                    return 'Formato de email incorrecto (ejemplo@dominio.com).';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),

              // --- 5. Button ---
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text(
                  'ENVIAR DATOS',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
