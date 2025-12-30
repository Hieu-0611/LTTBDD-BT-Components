import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const base = TextStyle(fontSize: 22, height: 1.5);
    return Scaffold(
      appBar: AppBar(title: const Text('Text & RichText'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text.rich(
            TextSpan(
              style: base,
              children: const [
                TextSpan(text: 'The '),
                TextSpan(
                  text: 'quick',
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                TextSpan(text: ' '),
                TextSpan(
                  text: 'Brown',
                  style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w700),
                ),
                TextSpan(text: '\nfox jumps '),
                TextSpan(text: 'over', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '\n'),
                TextSpan(
                  text: 'the lazy',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ' dog.'),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ImageDemoScreen extends StatelessWidget {
  const ImageDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ảnh trong project (asset)
    const localAsset = 'assets/images/uth.jpg';

    // Ảnh trên mạng
    const networkUrl =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/%E1%BA%A2nh_m%E1%BA%B7t_tr%C6%B0%E1%BB%9Bc_%C4%90H_GTVT_TP_HCM.jpg/500px-%E1%BA%A2nh_m%E1%BA%B7t_tr%C6%B0%E1%BB%9Bc_%C4%90H_GTVT_TP_HCM.jpg';

    Widget card({required Widget child}) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 220,
          color: Colors.grey.shade100,
          child: child,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Image (Local + Network)'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '1) Ảnh trong máy',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            card(
              child: Image.asset(
                localAsset,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text(
                      'Không load được uth.jpg\n'
                      'Kiểm tra: assets/images/uth.jpg\n'
                      'và pubspec.yaml (assets: - assets/images/)',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),

            const Text(
              '2) Ảnh trên mạng https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/%E1%BA%A2nh_m%E1%BA%B7t_tr%C6%B0%E1%BB%9Bc_%C4%90H_GTVT_TP_HCM.jpg/500px-%E1%BA%A2nh_m%E1%BA%B7t_tr%C6%B0%E1%BB%9Bc_%C4%90H_GTVT_TP_HCM.jpg',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            card(
              child: Image.network(
                networkUrl,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text(
                      'Không load được ảnh mạng\nKiểm tra Internet/URL',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconDemoScreen extends StatelessWidget {
  const IconDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon'), centerTitle: true),
      body: const Center(
        child: Wrap(
          spacing: 18,
          runSpacing: 18,
          children: [
            Icon(Icons.favorite, size: 28),
            Icon(Icons.star, size: 36),
            Icon(Icons.home, size: 44),
            Icon(Icons.settings, size: 52),
          ],
        ),
      ),
    );
  }
}
