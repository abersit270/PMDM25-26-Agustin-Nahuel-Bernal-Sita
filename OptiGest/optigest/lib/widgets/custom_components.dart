import 'package:flutter/material.dart';

// Input de texto estilizado para OptiGest
class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: const Color(0xFF1976D2)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}

// Botón de acción principal (Ej: "Siguiente", "Guardar")
class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = const Color(0xFF1976D2),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 2,
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// Un selector tipo rueda para valores decimales (ej: -2.25, +1.00)
class MeasureWheel extends StatelessWidget {
  final String label;
  final List<double> values;
  final Function(double) onSelected;

  const MeasureWheel({
    super.key,
    required this.label,
    required this.values,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          height: 120,
          width: 70,
          child: ListWheelScrollView.useDelegate(
            itemExtent: 40,
            perspective: 0.005,
            diameterRatio: 1.2,
            physics: const FixedExtentScrollPhysics(),
            onSelectedItemChanged: (index) => onSelected(values[index]),
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: values.length,
              builder: (context, index) {
                return Center(
                  child: Text(
                    values[index] > 0
                        ? "+${values[index].toStringAsFixed(2)}"
                        : values[index].toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
