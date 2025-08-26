import 'package:flutter/material.dart';

void main() {
  runApp(const Vertical());
}

class Vertical extends StatelessWidget {
  const Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Vertikal')),
        body: ListView(
          children: <Widget> [
            ListTile(leading: Icon(Icons.map),title: Text('Map'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.photo_album),title: Text('Album'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.phone),title: Text('Phone'),trailing: Icon(Icons.arrow_forward_ios)),

          ]
        ),
    );  
  }
}
