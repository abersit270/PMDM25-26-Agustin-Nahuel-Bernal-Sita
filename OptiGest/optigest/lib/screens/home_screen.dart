import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Detectamos si es tablet o móvil para el responsive
    final bool isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), // Gris muy claro profesional
      body: CustomScrollView(
        slivers: [
          // Un AppBar elegante que se encoge al hacer scroll
          SliverAppBar(
            expandedHeight: 180.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "OPTIGEST",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(
                  Icons.remove_red_eye_outlined,
                  size: 80,
                  color: Colors.white24,
                ),
              ),
            ),
          ),

          // Contenido de la Home
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isTablet
                    ? 2
                    : 1, // 2 columnas en tablet, 1 en móvil
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: isTablet
                    ? 1.5
                    : 2.5, // Ajuste de altura de los botones
              ),
              delegate: SliverChildListDelegate([
                _buildMenuCard(
                  context,
                  title: "NUEVO PACIENTE",
                  subtitle: "Registrar datos y medidas",
                  icon: Icons.person_add_alt_1_rounded,
                  color: const Color(0xFF2E7D32), // Verde éxito
                  onTap: () {
                    // Aquí navegaremos a la pantalla de datos
                    print("Navegando a Registro...");
                  },
                ),
                _buildMenuCard(
                  context,
                  title: "VER REGISTROS",
                  subtitle: "Historial de clientes",
                  icon: Icons.folder_shared_rounded,
                  color: const Color(0xFF1565C0), // Azul primario
                  onTap: () {
                    print("Navegando a Listado...");
                  },
                ),
                _buildMenuCard(
                  context,
                  title: "BUSCAR DNI",
                  subtitle: "Acceso rápido a ficha",
                  icon: Icons.search_rounded,
                  color: const Color(0xFFEF6C00), // Naranja acción
                  onTap: () {
                    print("Abriendo buscador...");
                  },
                ),
                _buildMenuCard(
                  context,
                  title: "AJUSTES",
                  subtitle: "Configuración de impresión",
                  icon: Icons.settings_suggest_rounded,
                  color: Colors.blueGrey,
                  onTap: () {
                    print("Navegando a Ajustes...");
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para crear los botones de menú con estilo "limpio"
  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 15,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Icon(icon, size: 40, color: color),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF37474F),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
