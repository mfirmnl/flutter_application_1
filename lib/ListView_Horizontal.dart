import 'package:flutter/material.dart';

void main() {
  runApp(const Horizontal());
}

class Horizontal extends StatelessWidget {
  const Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo ListView Horizontal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Horizontal'),
          backgroundColor: Colors.teal,
        ),
        body: const HorizontalListView(),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
