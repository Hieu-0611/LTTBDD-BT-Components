import 'package:flutter/material.dart';
import '../data/component_registry.dart';
import '../models/ui_component_item.dart';
import '../widgets/component_card.dart';
import '../widgets/section_title.dart';

class ComponentsListScreen extends StatefulWidget {
  const ComponentsListScreen({super.key});

  @override
  State<ComponentsListScreen> createState() => _ComponentsListScreenState();
}

class _ComponentsListScreenState extends State<ComponentsListScreen> {
  final searchCtrl = TextEditingController();

  @override
  void dispose() {
    searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final all = buildRegistry();
    final q = searchCtrl.text.trim().toLowerCase();

    final filtered = all.where((e) {
      if (q.isEmpty) return true;
      return e.category.toLowerCase().contains(q) ||
          e.title.toLowerCase().contains(q) ||
          e.subtitle.toLowerCase().contains(q);
    }).toList();

    final Map<String, List<UIComponentItem>> grouped = {};
    for (final item in filtered) {
      (grouped[item.category] ??= <UIComponentItem>[]).add(item);
    }

    final categories = grouped.keys.toList()..sort();

    return Scaffold(
      appBar: AppBar(title: const Text('UI Components List'), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: TextField(
              controller: searchCtrl,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search components...',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                for (final cat in categories) ...[
                  SectionTitle(cat),
                  for (final item in (grouped[cat] ?? const <UIComponentItem>[]))
                    ComponentCard(item: item),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
