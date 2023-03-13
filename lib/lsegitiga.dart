import 'package:flutter/material.dart';
import 'package:quiz1tpm/navbar.dart';

import 'navbar.dart';

class LuasSegitiga extends StatefulWidget {
  @override
  _LuasSegitigaState createState() => _LuasSegitigaState();
}

class _LuasSegitigaState extends State<LuasSegitiga> {
  final TextEditingController _alasController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();
  double _luas = 0;

  void _hitungLuas() {
    double alas = double.parse(_alasController.text);
    double tinggi = double.parse(_tinggiController.text);
    setState(() {
      _luas = 0.5 * alas * tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.logout), onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) {
                return const HalamanUtama();
              }), (route) => false,
            );
          },),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _alasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Input Alas',
              ),
            ),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Input Tinggi',
              ),
            ),
            SizedBox(height: 17.0),

            ElevatedButton(
              onPressed: _hitungLuas,
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 17.0),

            SizedBox(height: 17.0),
            Text(
              'Hasil Luas Segitiga: $_luas',
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}