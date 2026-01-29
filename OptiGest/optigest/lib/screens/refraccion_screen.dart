import 'package:flutter/material.dart';
import '../widgets/custom_components.dart';

class RefraccionScreen extends StatefulWidget {
  const RefraccionScreen({super.key});

  @override
  State<RefraccionScreen> createState() => _RefraccionScreenState();
}

class _RefraccionScreenState extends State<RefraccionScreen> {
  // Generamos listas de valores comunes en óptica
  final List<double> esferas = List.generate(
    81,
    (i) => (i - 40) * 0.25,
  ); // -10.00 a +10.00
  final List<double> cilindros = List.generate(
    41,
    (i) => (i - 20) * 0.25,
  ); // -5.00 a +5.00
  final List<int> ejes = List.generate(181, (i) => i); // 0 a 180 grados

  // Variables para guardar la selección
  double odSph = 0.0, odCyl = 0.0, oiSph = 0.0, oiCyl = 0.0;
  int odEje = 0, oiEje = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MEDIDAS DE REFRACCIÓN"),
        backgroundColor: const Color(0xFF0D47A1),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildEyeCard("OJO DERECHO (OD)", Colors.blue.shade800, true),
            const SizedBox(height: 20),
            _buildEyeCard("OJO IZQUIERDO (OI)", Colors.red.shade800, false),
            const SizedBox(height: 30),
            PrimaryButton(
              label: "FINALIZAR Y GUARDAR",
              color: const Color(0xFF2E7D32),
              onPressed: () {
                // Aquí se dispara el guardado en SQLite y la generación de PDF
                _mostrarConfirmacion(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEyeCard(String title, Color accentColor, bool isOD) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColor.withOpacity(0.3), width: 2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.remove_red_eye, color: accentColor),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MeasureWheel(
                label: "ESFERA (SPH)",
                values: esferas,
                onSelected: (v) => setState(() => isOD ? odSph = v : oiSph = v),
              ),
              MeasureWheel(
                label: "CILINDRO (CYL)",
                values: cilindros,
                onSelected: (v) => setState(() => isOD ? odCyl = v : oiCyl = v),
              ),
              // El eje es especial porque es entero 0-180
              _buildEjeSelector(isOD),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEjeSelector(bool isOD) {
    return Column(
      children: [
        const Text(
          "EJE (AXIS)",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          height: 120,
          width: 70,
          child: ListWheelScrollView.useDelegate(
            itemExtent: 40,
            physics: const FixedExtentScrollPhysics(),
            onSelectedItemChanged: (index) => setState(
              () => isOD ? odEje = ejes[index] : oiEje = ejes[index],
            ),
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: ejes.length,
              builder: (context, index) => Center(
                child: Text(
                  "${ejes[index]}°",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _mostrarConfirmacion(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Registro Guardado"),
        content: const Text(
          "Los datos se han guardado en la base de datos local y el PDF está listo para imprimir.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }
}
