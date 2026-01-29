import 'package:flutter/material.dart';

class ListadoScreen extends StatefulWidget {
  const ListadoScreen({super.key});

  @override
  State<ListadoScreen> createState() => _ListadoScreenState();
}

class _ListadoScreenState extends State<ListadoScreen> {
  // Lista ficticia para la visualización (luego vendrá de SQLite)
  final List<Map<String, String>> pacientes = [
    {"nombre": "Juan Pérez", "dni": "12345678", "fecha": "20/01/2026"},
    {"nombre": "María García", "dni": "87654321", "fecha": "22/01/2026"},
    {"nombre": "Carlos López", "dni": "45678912", "fecha": "25/01/2026"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text("HISTORIAL DE CLIENTES"),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {}, // Para filtrar por fecha o nombre
          ),
        ],
      ),
      body: Column(
        children: [
          // Barra de búsqueda rápida
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar por nombre o DNI...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Lista de pacientes
          Expanded(
            child: ListView.builder(
              itemCount: pacientes.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final p = pacientes[index];
                return _buildPacienteCard(p['nombre']!, p['dni']!, p['fecha']!);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPacienteCard(String nombre, String dni, String fecha) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Text(
            nombre[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          nombre,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("DNI: $dni"),
            Text("Última visita: $fecha", style: const TextStyle(fontSize: 12)),
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(value: 'pdf', child: Text('Generar PDF')),
            const PopupMenuItem(value: 'ver', child: Text('Ver Detalle')),
            const PopupMenuItem(
              value: 'borrar',
              child: Text('Eliminar', style: TextStyle(color: Colors.red)),
            ),
          ],
          onSelected: (value) {
            // Lógica para cada acción
            print("Acción seleccionada: $value");
          },
        ),
      ),
    );
  }
}
