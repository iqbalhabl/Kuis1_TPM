import 'package:flutter/material.dart';
import 'package:quiz1tpm/data.dart';
import 'package:quiz1tpm/segitiga.dart';
import 'package:quiz1tpm/layang.dart';


class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int currentIndex = 0;
  final screens = [
    Data(),
    Segitiga(),
    Layang(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selamat Datang"),
      ),

      body: screens[currentIndex],


      bottomNavigationBar : BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture),
            label: 'Segitiga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture),
            label: 'Layang - Layang',
          ),
        ],
      ),


    );
  }

////////////////////////////////////////////////////////////
}

