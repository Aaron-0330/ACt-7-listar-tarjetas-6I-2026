import 'package:flutter/material.dart';

void main() => runApp(const AppHAGALO());

class AppHAGALO extends StatelessWidget {
  const AppHAGALO({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lasherramientas(),
    );
  }
}

class Lasherramientas extends StatelessWidget {
  const Lasherramientas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1A1A1A),
        title: const Text(
          "HAGALO",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.build, color: Colors.orangeAccent),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chair, color: Colors.cyanAccent),
            tooltip: 'Muebles',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.deck, color: Colors.lightGreenAccent),
            tooltip: 'Decoración Exterior',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.kitchen, color: Colors.pinkAccent),
            tooltip: 'Electrodomésticos',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta("Aaron Dominguez", " Vendedor de Sofás y mesas de centro",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjX4yY5hWW90ynw6eanlwuSyR1dwddVMGxWQ&s"),
          _crearTarjeta("Decoración Exterior", "Macetas y muebles de jardín",
              "https://cdn-icons-png.flaticon.com/512/358/358824.png"),
          _crearTarjeta("Electrodomésticos", "Lo último en tecnología",
              "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/navaherramienta3png.png"),
          _crearTarjeta("Iluminación", "Lámparas y focos LED",
              "https://picsum.photos/id/42/200"),
        ],
      ),
    );
  }

  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: const Color(0xFF1E1E1E),
      elevation: 10,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[900],
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite, color: Color(0xFFB71C1C)),
          onPressed: () {
            debugPrint("Like en: $titulo");
          },
        ),
      ),
    );
  }
}