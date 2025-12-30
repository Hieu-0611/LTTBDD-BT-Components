import 'package:flutter/material.dart';

class ButtonsDemoScreen extends StatelessWidget {
  const ButtonsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons'), centerTitle: true),
      body: Center(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
          ],
        ),
      ),
    );
  }
}

class FabDemoScreen extends StatelessWidget {
  const FabDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton'), centerTitle: true),
      body: const Center(child: Text('Tap FAB')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Hello from FAB 👋')),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
