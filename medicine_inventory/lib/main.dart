import 'package:flutter/material.dart';
import 'package:medicine_inventory/credit_meter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: CreditMeter(creditScore: 400),
        ),
      ),
    );
  }
}
