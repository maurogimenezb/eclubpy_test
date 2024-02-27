import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({super.key});

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos'),
      ),
      body: Container(
        color: const Color(0xFFF7F0ED),
      ),
    );
  }
}
