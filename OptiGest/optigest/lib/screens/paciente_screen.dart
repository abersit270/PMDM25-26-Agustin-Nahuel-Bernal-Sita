import 'package:flutter/material.dart';
import '../widgets/custom_components.dart';

class PacienteScreen extends StatefulWidget {
  const PacienteScreen({super.key});

  @override
  State<PacienteScreen> createState() => _PacienteScreenState();
}

class _PacienteScreenState extends State<PacienteScreen> {
  // Controladores para capturar el texto
  final _nombreController = TextEditingController();
  final _dniController = TextEditingController();
  final _telController = TextEditingController();
  final _edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DATOS DEL PACIENTE"),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Información Personal",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 20),

            // Campo Nombre
            CustomTextField(
              label: "Nombre Completo",
              icon: Icons.person,
              controller: _nombreController,
            ),

            // DNI y Edad
            if (isWide)
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: "DNI / Cédula",
                      icon: Icons.badge,
                      controller: _dniController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomTextField(
                      label: "Edad",
                      icon: Icons.cake,
                      controller: _edadController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              )
            else ...[
              CustomTextField(
                label: "DNI / Cédula",
                icon: Icons.badge,
                controller: _dniController,
                keyboardType: TextInputType.number,
              ),
              CustomTextField(
                label: "Edad",
                icon: Icons.cake,
                controller: _edadController,
                keyboardType: TextInputType.number,
              ),
            ],

            CustomTextField(
              label: "Teléfono de contacto",
              icon: Icons.phone,
              controller: _telController,
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 30),

            // Botón para pasar a la siguiente fase
           PrimaryButton(
              label: "CONTINUAR A REFRACCIÓN",
              onPressed: () {
                // Validar que no esté vacío (Opcional por ahora)
                Navigator.pushNamed(context, '/refraccion'); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
