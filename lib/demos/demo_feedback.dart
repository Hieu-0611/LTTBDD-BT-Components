import 'package:flutter/material.dart';

// class SnackBarDemoScreen extends StatelessWidget {
//   const SnackBarDemoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('SnackBar'), centerTitle: true),
//       body: Center(
//         child: FilledButton(
//           onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('SnackBar appears!')),
//           ),
//           child: const Text('Show SnackBar'),
//         ),
//       ),
//     );
//   }
// }

// class DialogDemoScreen extends StatelessWidget {
//   const DialogDemoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Dialog'), centerTitle: true),
//       body: Center(
//         child: FilledButton(
//           onPressed: () => showDialog(
//             context: context,
//             builder: (_) => AlertDialog(
//               title: const Text('AlertDialog'),
//               content: const Text('This is a dialog.'),
//               actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
//             ),
//           ),
//           child: const Text('Open Dialog'),
//         ),
//       ),
//     );
//   }
// }

class BottomSheetDemoScreen extends StatelessWidget {
  const BottomSheetDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomSheet'), centerTitle: true),
      body: Center(
        child: FilledButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            showDragHandle: true,
            builder: (_) => const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Modal BottomSheet', style: TextStyle(fontWeight: FontWeight.w700)),
                  SizedBox(height: 8),
                  Text('Swipe down to close.'),
                ],
              ),
            ),
          ),
          child: const Text('Open BottomSheet'),
        ),
      ),
    );
  }
}

class ProgressDemoScreen extends StatelessWidget {
  const ProgressDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress'), centerTitle: true),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(),
            SizedBox(height: 18),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
