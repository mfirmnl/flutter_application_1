import 'package:flutter/material.dart';

void main() {
  runApp(const Tugascampuran());
}

class Tugascampuran extends StatelessWidget {
  const Tugascampuran ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo List & GridView',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Vertikal')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('ListView Horizontal'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HorizontalListViewPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_album),
            title: const Text('GridView'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LayoutGridView()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('ListView Vertikal (Lagi)'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VerticalListViewPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class HorizontalListViewPage extends StatelessWidget {
  const HorizontalListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Horizontal')),
      body: const HorizontalListView(),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: const [
        ColorBox(color: Colors.red),
        ColorBox(color: Colors.blue),
        ColorBox(color: Colors.green),
        ColorBox(color: Colors.yellow),
        ColorBox(color: Colors.orange),
        ColorBox(color: Colors.purple),
        ColorBox(color: Colors.grey),
      ],
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  const ColorBox({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class LayoutGridView extends StatelessWidget {
  const LayoutGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView Demo")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) {
            return GridItem(index: index);
          }),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int index;

  const GridItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.amber[100 * ((index % 5) + 1)],
      child: Center(
        child: Text(
          "Item ${index + 1}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// Halaman ListView vertikal tambahan
class VerticalListViewPage extends StatelessWidget {
  const VerticalListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Vertikal')),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.map), title: Text('Map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ],
      ),
    );
  }
}
