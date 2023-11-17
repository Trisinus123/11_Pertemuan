import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Suhu',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedItem = 'Reamur'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konversi Suhu"),
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Celsius",
                hintText: "Masukkan Angka Temperatur dalam Celsius",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedItem, 
              items: const [
                DropdownMenuItem<String>(
                  value: 'Reamur',
                  child: Text('Reamur'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kelvin',
                  child: Text('Kelvin'),
                ),
                DropdownMenuItem<String>(
                  value: 'Fahrenheit',
                  child: Text('Fahrenheit'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedItem = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Hasil'),
            const Text('365'),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('Konversi Suhu'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
