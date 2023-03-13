import 'package:flutter/material.dart';
import 'package:quiz1tpm/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis TPM 1',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HalamanUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

