import 'package:flutter/material.dart';
import 'ksegitiga.dart';
import 'lsegitiga.dart';


class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: const Text('Luas'),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return LuasSegitiga(); }));
              },
            ),
            OutlineButton(
              child: const Text('Keliling'),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return KelSegitiga(); }));
              },
            ),
          ],
        ));
  }
}