import 'package:flutter/material.dart';
import 'package:quiz1tpm/navbar.dart';


class KelLayang extends StatefulWidget {
  @override
  _KelLayangState createState() => _KelLayangState();
}

class _KelLayangState extends State<KelLayang> {
  final TextEditingController _sisi1Controller = TextEditingController();
  final TextEditingController _sisi2Controller = TextEditingController();
  double _kel = 0;

  void _hitungLuas() {
    double sisi1 = double.parse(_sisi1Controller.text);
    double sisi2 = double.parse(_sisi2Controller.text);
    setState(() {
      _kel = 2 * (sisi1 + sisi2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Layang-Layang'),
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
              controller: _sisi1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Input Sisi 1',
              ),
            ),
            TextField(
              controller: _sisi2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Input Sisi 2',
              ),
            ),

            SizedBox(height: 17.0),

            ElevatedButton(
              onPressed: _hitungLuas,
              child: Text('Hitung Keliling  '),
            ),
            SizedBox(height: 17.0),

            SizedBox(height: 17.0),
            Text(
              'Hasil Keliling Layang-layang: $_kel',
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}