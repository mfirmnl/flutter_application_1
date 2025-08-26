import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListView_Vertical.dart';
import 'package:flutter_application_1/tugas.dart';
import 'ListView_Vertical.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : Vertical()
    );
  }
}