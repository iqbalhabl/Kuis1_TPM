import 'package:flutter/material.dart';
import 'package:quiz1tpm/navbar.dart';

import 'navbar.dart';

class KelSegitiga extends StatefulWidget {
  @override
  _KelSegitigaState createState() => _KelSegitigaState();
}

class _KelSegitigaState extends State<KelSegitiga> {
  final TextEditingController _kelController = TextEditingController();
  double _kel = 0;

  void _hitungKel() {
    double sisi = double.parse(_kelController.text);
    setState(() {
      _kel = sisi * 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Segitiga'),
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
              controller: _kelController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Input Sisi',
              ),
            ),

            SizedBox(height: 17.0),
            ElevatedButton(
              onPressed: _hitungKel,
              child: Text('Hitung Keliling'),
            ),
            SizedBox(height: 17.0),
            Text(
              'Hasil Keliling Segitiga: $_kel',
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}