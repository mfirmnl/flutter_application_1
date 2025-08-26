import 'package:flutter/material.dart';

class LayoutGridView extends StatelessWidget {
  const LayoutGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Demo"),
        backgroundColor: Colors.teal,
      ),
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
