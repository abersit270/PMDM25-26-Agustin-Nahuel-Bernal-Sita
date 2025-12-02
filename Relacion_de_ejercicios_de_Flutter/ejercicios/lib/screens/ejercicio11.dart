import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ejercicio11 extends StatelessWidget {
  final Uri _repoUrl = Uri.parse("https://bit.ly/2w9g74q");
  Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppDrawer()),
      appBar: AppBar(title: const Text('colorpopcosmetics'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/perro.webp'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            _StatItem(label: 'Publicaciones', value: '7,850'),
                            _StatItem(label: 'Seguidores', value: '8.2M'),
                            _StatItem(label: 'Siguiendo', value: '1,754'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "ColorPop Cosmetics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text("Health/Beauty"),
                  const Text("Made in LA"),
                  const Text("Cruelty Free"),
                  const Text("#ColourPopMe"),
                  InkWell(
                    onTap: () async {
                      if (await canLaunchUrl(_repoUrl)) {
                        await launchUrl(
                          _repoUrl,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: const Text(
                      'bit.ly/2w9g74q',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                  const Text("Followed by blablabla"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Seguir'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Mensaje'),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Mail'),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8, // simula varias historias
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey[300],
                            backgroundImage: AssetImage(
                              'assets/images/fotoMaquillaje${index + 1}.jpg',
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Destacada ${index + 1}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  9,
                  (index) => Container(
                    color: Colors.grey[300],
                    child: Image(
                      image: AssetImage(
                        'assets/images/fotoMaquillaje${(index) + 1}.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label),
      ],
    );
  }
}
