import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String? _selectedItem;
  final List<String> data = [
    "Trisinus",
    "Tris",
    "Nus",
    "TryGul",
    "Gulo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: const Text('Pilih'),
          value: _selectedItem,
          onChanged: (String? value) {
            setState(() {
              _selectedItem = value; 
            });
          },
          items: data.map((String e) {
            return DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            );
          }).toList(),
        ),
      ),
    );
  }
}

