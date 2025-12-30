import 'package:flutter/material.dart';

class ColumnDemoScreen extends StatelessWidget {
  const ColumnDemoScreen({super.key});

  Widget box(String t) => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(14),
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.blue.shade100),
    ),
    child: Text(t, style: const TextStyle(fontWeight: FontWeight.w600)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          box('Item 1'), box('Item 2'), box('Item 3'),
          Text('Column sắp xếp theo chiều dọc', style: TextStyle(color: Colors.grey.shade700)),
        ]),
      ),
    );
  }
}

class RowDemoScreen extends StatelessWidget {
  const RowDemoScreen({super.key});

  Widget smallBox(String t) => Expanded(
    child: Container(
      height: 70,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Text(t, style: const TextStyle(fontWeight: FontWeight.w600)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Row(children: [smallBox('A'), smallBox('B'), smallBox('C')]),
          const SizedBox(height: 14),
          Text('Row sắp xếp theo chiều ngang', style: TextStyle(color: Colors.grey.shade700)),
        ]),
      ),
    );
  }
}

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack'), centerTitle: true),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 220, height: 220, color: Colors.blue.shade100),
            Container(width: 140, height: 140, color: Colors.blue.shade300),
            Container(width: 70, height: 70, color: Colors.blue.shade600),
          ],
        ),
      ),
    );
  }
}

class WrapDemoScreen extends StatelessWidget {
  const WrapDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap'), centerTitle: true),
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(18, (i) => Chip(label: Text('Chip ${i + 1}'))),
        ),
      ),
    );
  }
}
